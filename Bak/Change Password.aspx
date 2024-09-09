<%@ Page Language="C#" Title="Change Password" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="NLCRecruitmentPortal.Change_Password" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page content -->
    <div class="page-title text-center">
        <h3>Change Your Password</h3>
        <hr />
    </div>
    <div class="awidget-body">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">
                        Current Password:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCurrentpassword" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCurrentpassword"
                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                            ValidationGroup="ChangePass">
                        </asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                            TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">
                        New Password:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="RegPassword1" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="Password must have minimum of 8 characters</br> with at least one numeric character."
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,20}$" ControlToValidate="RegPassword1" runat="server" ValidationGroup="ChangePass">
                        </asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                            TargetControlID="RegularExpressionValidator1">
                        </asp:ValidatorCalloutExtender>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-md-4">
                        Confirm New Password:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="RegPassword2" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                        <asp:CompareValidator ID="comparePasswords"
                            runat="server" ControlToCompare="RegPassword1" ControlToValidate="RegPassword2" ForeColor="Red"
                            ErrorMessage="Your passwords do not match up!" ValidationGroup="ChangePass"></asp:CompareValidator>
                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                            TargetControlID="comparePasswords">
                        </asp:ValidatorCalloutExtender>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="col-md-7 col-md-offset-4">
                        <asp:Button runat="server" ID="btnChangePassword" OnClick="btnChangePassword_Click" ValidationGroup="ChangePass" CssClass="btn btn-info btn-sm" Text="Change Password" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RegPassword1"
                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                ValidationGroup="ChangePass">
            </asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                TargetControlID="RequiredFieldValidator1">
            </asp:ValidatorCalloutExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RegPassword2"
                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                ValidationGroup="ChangePass">
            </asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                TargetControlID="RequiredFieldValidator2">
            </asp:ValidatorCalloutExtender>
        </div>
    </div>
</asp:Content>
