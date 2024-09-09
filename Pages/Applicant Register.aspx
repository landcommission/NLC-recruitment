<%@ Page Language="C#" AutoEventWireup="true" Title="Applicant Register" CodeBehind="Applicant Register.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLCRecruitmentPortal.Pages.Applicant_Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
    <style type="text/css">
        .Langcheckbox {
            width: 64%;
            float: right;
        }

        .RadioChek {
            width: 30%;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Page title -->
    <div class="row">
        <div class="col-md-12">

            <div class="awidget full-width">
                <div class="awidget-head">
                    <h3 style="color: #a35050;">Applicant Register</h3>
                </div>
                <div class="awidget-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">
                                    User Name/Email Address:</label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" ID="txtSeachVal" CssClass="form-control input-sm"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSeachVal"
                                        SetFocusOnError="True" ErrorMessage="ID number Required!" ForeColor="Red" Display="None"
                                        ValidationGroup="PersnalDetails">
                                    </asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                        TargetControlID="RequiredFieldValidator1">
                                    </asp:ValidatorCalloutExtender>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <asp:Button runat="server" ID="btnLoadApplicantRegister" OnClick="btnLoadApplicantRegister_Click" CssClass="btn btn-info btn-sm" Text="Load User"
                                ValidationGroup="PersnalDetails" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <asp:GridView ID="gridAppRegister" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName"
                                    CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                    HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridAppRegister_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True"
                                            SortExpression="UserName" />
                                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" />
                                        <asp:TemplateField HeaderText="Verified">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkVerified" Text='<%# Eval("Verified") %>' Checked='<%# Eval("Verified") %>' Enabled="false" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="First_Name" HeaderText="First Name" />
                                        <asp:BoundField DataField="Middle_Name" HeaderText="Middle Name" />
                                        <asp:BoundField DataField="Last_Name" HeaderText="Last Name" />
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <asp:Button ID="btnResetPassword" Text="Reset Password" runat="server" CommandName="Reset" CssClass="btn btn-info btn-xs"
                                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnResetPassword_Click" OnClientClick="return confirm('Are you sure you want to Reset password for this account?');" />
                                                <asp:Button ID="btnVerifyAccount" Text="Verify Account" runat="server" CommandName="Verify" OnClientClick="return confirm('Are you sure you want to Verify this account?');" CssClass="btn btn-success btn-xs"
                                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnVerifyAccount_Click" />
                                                <asp:Button ID="btnDeleteAcc" Text="Delete" runat="server" CommandName="Remove" OnClientClick="return confirm('Are you sure you want to delete this account?');" CssClass="btn btn-warning btn-xs"
                                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnDeleteAcc_Click" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="bs-pagination" />
                                    <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                                    <EmptyDataTemplate>No Details Found!</EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
