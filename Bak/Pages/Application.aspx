<%@ Page Language="C#" AutoEventWireup="true" Title="Applicant profile" MasterPageFile="~/Site.Master" CodeBehind="Application.aspx.cs" Inherits="NLCRecruitmentPortal.Pages.Application" %>

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
                    <h3 style="color: #a35050;">Please make sure you have filled this section completely before applying for any position</h3>
                </div>
                <div class="awidget-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle col-md-12 m-r-0 m-l-0"
                                ActiveTabIndex="0">
                                <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Personal Details">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="applicantProfileStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        ID/Passport Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" Enabled="false" ID="IdNo" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="IdNo"
                                                                            SetFocusOnError="True" ErrorMessage="ID number Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                                            TargetControlID="RequiredFieldValidator1">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        CitizenShip:</label>
                                                                    <div class="col-md-8">
                                                                       
                                                                        <asp:DropDownList ID="ddlCitizenship" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCitizenship"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Please Select CitizenShip!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                                                            TargetControlID="RequiredFieldValidator2">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        First Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="FirstName" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
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
                                                                        County of Residence:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlCountyResidence" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCountyResidence"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                                            TargetControlID="RequiredFieldValidator4">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Middle Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="MiddleName" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MiddleName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                                            TargetControlID="RequiredFieldValidator5">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        County of Birth:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlCountyOfBirth" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="ddlCountyOfBirth"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender40"
                                                                            TargetControlID="RequiredFieldValidator38">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Last Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="LastName" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="LastName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                                            TargetControlID="RequiredFieldValidator7">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Ethnicity:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlEthnicity" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="ddlEthnicity"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender41"
                                                                            TargetControlID="RequiredFieldValidator39">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Marital Status:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="Select">Select</asp:ListItem>
                                                                            <asp:ListItem Value="1">Single</asp:ListItem>
                                                                            <asp:ListItem Value="2">Married</asp:ListItem>
                                                                            <asp:ListItem Value="3">Separated</asp:ListItem>
                                                                            <asp:ListItem Value="4">Divorced</asp:ListItem>
                                                                            <asp:ListItem Value="5">Widow</asp:ListItem>
                                                                            <asp:ListItem Value="5">Widower</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlMaritalStatus"
                                                                            SetFocusOnError="True" InitialValue="Select" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                                                            TargetControlID="RequiredFieldValidator6">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Mobile Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="MobileNo" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="MobileNo"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                                                            TargetControlID="RequiredFieldValidator8">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date of Birth:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker1" class="input-append">
                                                                            <asp:TextBox runat="server" ID="dtDob" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dtDob"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="PersnalDetails">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                                                                TargetControlID="RequiredFieldValidator9">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Email Address:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="EmailAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress"
                                                                            ValidationExpression="^\S+@\S+\.\S+$" SetFocusOnError="True" ErrorMessage="You must enter a valid email address!" />
                                                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" Enabled="True"
                                                                            TargetControlID="RegularExpressionValidator1">
                                                                        </asp:ValidatorCalloutExtender>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="EmailAddress"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                                                            TargetControlID="RequiredFieldValidator10">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Gender:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                            <asp:ListItem Value="Male">Male</asp:ListItem>
                                                                            <asp:ListItem Value="Female">Female</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlGender"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                                                            TargetControlID="RequiredFieldValidator11">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        First Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlLanguage1" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                            <asp:ListItem Value="ENG">English</asp:ListItem>
                                                                            <asp:ListItem Value="FRENCH">FRENCH</asp:ListItem>
                                                                            <asp:ListItem Value="KIS">Kiswahili</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <asp:CheckBoxList ID="cblLanguage1" runat="server" RepeatDirection="Horizontal" CssClass="Langcheckbox">
                                                                        <asp:ListItem>Speak</asp:ListItem>
                                                                        <asp:ListItem>Read</asp:ListItem>
                                                                        <asp:ListItem>Write</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Second Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlLanguage2" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                            <asp:ListItem Value="ENG">English</asp:ListItem>
                                                                            <asp:ListItem Value="FRENCH">FRENCH</asp:ListItem>
                                                                            <asp:ListItem Value="KIS">Kiswahili</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <asp:CheckBoxList ID="cblLanguage2" runat="server" RepeatDirection="Horizontal" CssClass="Langcheckbox">
                                                                        <asp:ListItem>Speak</asp:ListItem>
                                                                        <asp:ListItem>Read</asp:ListItem>
                                                                        <asp:ListItem>Write</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Additional Language:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtOtherLanguage" CssClass="form-control input-sm"></asp:TextBox>

                                                                    </div>
                                                                    <asp:CheckBoxList ID="cblLanguage3" runat="server" RepeatDirection="Horizontal" CssClass="Langcheckbox">
                                                                        <asp:ListItem>Speak</asp:ListItem>
                                                                        <asp:ListItem>Read</asp:ListItem>
                                                                        <asp:ListItem>Write</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Are you a person living with disability?</label>
                                                                    <div class="col-md-8">
                                                                        <asp:RadioButtonList ID="RadioPOD" runat="server" CssClass="RadioChek"
                                                                            RepeatDirection="Horizontal" AutoPostBack="True"
                                                                            OnSelectedIndexChanged="RadioPOD_SelectedIndexChanged">
                                                                            <asp:ListItem>Yes</asp:ListItem>
                                                                            <asp:ListItem Selected="True">No</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                        <label id="disabilityLabel" runat="server" style="color: #a35050;" visible="false">If Yes, Give Details</label><br />
                                                                        <asp:TextBox ID="txtPOD" runat="server" Visible="false" TextMode="MultiLine" Style="text-align: left; text-transform: uppercase;"
                                                                            CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="txtPOD"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender42"
                                                                            TargetControlID="RequiredFieldValidator40">
                                                                        </asp:ValidatorCalloutExtender>
                                                                        <label id="lblDisablityCertNo" runat="server" style="color: #a35050;" visible="false">Certificate Number</label><br />
                                                                        <asp:TextBox ID="txtDisabilityCertNo" runat="server" Visible="false" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="txtDisabilityCertNo"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender43"
                                                                            TargetControlID="RequiredFieldValidator41">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Postal Address:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="PostalAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Alternative Contacts:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="AternativeContacts" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Postal Code:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:DropDownList ID="ddlPostalCodes" runat="server" CssClass="form-control input-sm" DataTextField="City" DataValueField="Code"
                                                                            AppendDataBoundItems="true" Visible="false">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="txtPostalCode"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PersnalDetails">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender39"
                                                                            TargetControlID="RequiredFieldValidator37">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        A  Do you have any relative who is currently working at NLC?</label>
                                                                    <div class="col-md-8">
                                                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="RadioChek"
                                                                            RepeatDirection="Horizontal" AutoPostBack="True"
                                                                            OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                                                                            <asp:ListItem>Yes</asp:ListItem>
                                                                            <asp:ListItem Selected="True">No</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                        <b style="color: #a35050;">If yes, state the relationship:</b><br />
                                                                        <asp:DropDownList ID="ddlcitamrelation" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" Enabled="false">
                                                                            <asp:ListItem Text="Select Relation" Value="">  </asp:ListItem>
                                                                            <asp:ListItem Text="Spouse" Value="SPOUSE"> </asp:ListItem>
                                                                            <asp:ListItem Text="Father" Value="FATHER"> </asp:ListItem>
                                                                            <asp:ListItem Text="Mother" Value="MOTHER"> </asp:ListItem>
                                                                            <asp:ListItem Text="Son" Value="SON"> </asp:ListItem>
                                                                            <asp:ListItem Text="Daughter" Value="DAUGHTER"> </asp:ListItem>
                                                                            <asp:ListItem Text="Grandparent" Value="GRANDPARENT"> </asp:ListItem>
                                                                            <asp:ListItem Text="Grandchild" Value="GRANDCHILD"> </asp:ListItem>
                                                                            <asp:ListItem Text="Brother" Value="BROTHER"> </asp:ListItem>
                                                                            <asp:ListItem Text="Sister" Value="SISTER"> </asp:ListItem>
                                                                            <asp:ListItem Text="Niece" Value="NIECE"> </asp:ListItem>
                                                                            <asp:ListItem Text="Nephew" Value="NEPHEW"> </asp:ListItem>
                                                                            <asp:ListItem Text="Cousin" Value="COUSIN"> </asp:ListItem>
                                                                            <asp:ListItem Text="Inlaws" Value="INLAWS"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Physical Address:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="PhysicalAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnSubmitApplicantProfile" OnClick="btnSubmitApplicantProfile_Click" CssClass="btn btn-info btn-sm" Text="Save Personal Details"
                                                                            ValidationGroup="PersnalDetails" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Previous Employments">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3>State all previous employments starting with the most recent(<span style="color: #a35050"><i>NB: Not the current Employment</i></span>)</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="prevEmpStatus" CssClass="label label-success"
                                                                    Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Employer:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="NameofEmployer" onkeypress="return this.value.length<=250" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="NameofEmployer"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                                                            TargetControlID="RequiredFieldValidator12">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Phone Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="EmployerContacts" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="EmployerContacts"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                                                            TargetControlID="RequiredFieldValidator13">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Department:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="Department" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Department"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender16"
                                                                            TargetControlID="RequiredFieldValidator14">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Position Held:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="Position" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Position"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender17"
                                                                            TargetControlID="RequiredFieldValidator15">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Type of Position:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlPrevEmploymentPositions" runat="server" DataValueField="Code" DataTextField="Description" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Text="Select Position" Value="">  </asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlPrevEmploymentPositions"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender18"
                                                                            TargetControlID="RequiredFieldValidator16">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Brief Description Of Duties:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="Duties" onkeypress="return this.value.length<=250" runat="server" CssClass="form-control input-sm" Height="52px" TextMode="MultiLine"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="Duties"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender19"
                                                                            TargetControlID="RequiredFieldValidator17">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Staff Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="StaffNo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="StaffNo"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="PrevJobs">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender20"
                                                                            TargetControlID="RequiredFieldValidator18">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date Employed:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker3" class="input-append">
                                                                            <asp:TextBox runat="server" ID="DateEmployed" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="DateEmployed"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="PrevJobs">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender21"
                                                                                TargetControlID="RequiredFieldValidator19">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date Left:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker4" class="input-append">
                                                                            <asp:TextBox runat="server" ID="DateLeft" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DateLeft"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="PrevJobs">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender22"
                                                                                TargetControlID="RequiredFieldValidator20">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnPreviousEmployment" OnClick="btnPreviousEmployment_Click" CssClass="btn btn-info btn-sm"
                                                                            Text="Save Previous Employment Details" ValidationGroup="PrevJobs" />
                                                                        <asp:Button runat="server" ID="btnCancelPrefJobs" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group" style="float: left; padding-left: 100px;">
                                                                <label class="control-label col-md-12 " style="color: #8C1C03; font-style: italic;">
                                                                    NB: Employment history starting with Most Recent one. Not the current empoyment.
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridPreviousEmployment" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID"></asp:BoundField>
                                                                            <asp:BoundField DataField="Employer" HeaderText="Employer" />
                                                                            <asp:BoundField DataField="Contacts" HeaderText="Contacts" />
                                                                            <asp:BoundField DataField="Department" HeaderText="Department" />
                                                                            <asp:BoundField DataField="Position" HeaderText="Position" />
                                                                            <asp:BoundField DataField="StaffNumber" HeaderText="Staff Number" />
                                                                            <asp:BoundField DataField="Description_of_Duties" HeaderText="Duties" />
                                                                            <asp:BoundField DataField="DateEmployed" HeaderText="Date Employed" DataFormatString="{0:d}" />
                                                                            <asp:BoundField DataField="DateLeft" HeaderText="Date Left" DataFormatString="{0:d}" />
                                                                            <asp:BoundField DataField="Position_Type" HeaderText="Position Type" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditPrevEmployment" Text="Edit" runat="server" CommandName="EditPrevEmpDetails" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditPrevEmployment_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemovePrevEmployment" Text="Remove" runat="server" CommandName="RemovePrevEmpDetails" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemovePrevEmployment_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Previous Employment History Added!</EmptyDataTemplate>
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Current Employments">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3>Current Employment Details</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelCurrentEmpInfoStatus" CssClass="label label-success"
                                                                    Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Where are you currently employed?</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="currentlyemployed" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="currentlyemployed"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender23"
                                                                            TargetControlID="RequiredFieldValidator21">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Phone Number Of the Current Employer:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtCurrentphone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtCurrentphone"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender24"
                                                                            TargetControlID="RequiredFieldValidator22">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Department:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtCurrentDepartmnt" onpaste="return false" onkeypress="return this.value.length<=20"  runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtCurrentDepartmnt"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender25"
                                                                            TargetControlID="RequiredFieldValidator23">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Position Held:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtCurrentposition" onpaste="return false" onkeypress="return this.value.length<=50" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtCurrentposition"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender26"
                                                                            TargetControlID="RequiredFieldValidator24">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Type of Position:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlCurrenttypePosition" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Description"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Text="Select Position" Value="">  </asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ddlCurrenttypePosition"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender27"
                                                                            TargetControlID="RequiredFieldValidator25">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Current Monthly Gross salary (KES):</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtcurrentsalary" onkeypress="return this.value.length<=20" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtcurrentsalary"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender28"
                                                                            TargetControlID="RequiredFieldValidator26">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Additional Benefits:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtadditionalbenefits" onpaste="return false" onkeypress="return this.value.length<=30" runat="server" CssClass="form-control input-sm" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Staff Number:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtStaffNumber" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtStaffNumber"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender29"
                                                                            TargetControlID="RequiredFieldValidator27">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Is it ok to contact your current employer?</label>
                                                                    <div class="col-md-8">
                                                                        <asp:RadioButton ID="rndcontactyes" runat="server" GroupName="Conta" Text="Yes" Checked="True" />
                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                       <asp:RadioButton ID="rndcontactno" runat="server" GroupName="Conta" Text="No" />
                                                                        <%--   <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="RadioChek"
                                                                            RepeatDirection="Horizontal">
                                                                            <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                                            <asp:ListItem>No</asp:ListItem>
                                                                        </asp:RadioButtonList>--%>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date Employed:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker5" class="input-append">
                                                                            <asp:TextBox runat="server" ID="txtCurrentDateEmployed" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtCurrentDateEmployed"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="CurrentJob">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender31"
                                                                                TargetControlID="RequiredFieldValidator29">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Why do you want to leave your current employment:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" onpaste="return false" onkeypress="return this.value.length<=200" ID="txtCurrentleavingreason" TextMode="MultiLine" Height="80px" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="txtCurrentleavingreason"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender32"
                                                                            TargetControlID="RequiredFieldValidator30">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        What is your Expected Salary in (KES) for this Position:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtAcceptableSalary" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtAcceptableSalary"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="CurrentJob">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender30"
                                                                            TargetControlID="RequiredFieldValidator28">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnCurrentEmployment" OnClick="btnCurrentEmployment_Click" CssClass="btn btn-info btn-sm"
                                                                            Text="Save Current Employment Details" ValidationGroup="CurrentJob" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Clearance Documents">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="awidget-head">
                                                            <h3>Do you have the following valid documents?</h3>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelRelevantDocStatus" CssClass="label label-success"
                                                                    Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <table>
                                                            <tr>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <label for="cblCertHelb" class="control-label" style="text-align: left;">
                                                                        Helb Clearance Certificate?:</label>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <label for="cblCertGoodConduct" class="control-label" style="text-align: left;">
                                                                        Certificate of Good Conduct ?:</label>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <label for="cblCRB" class="control-label" style="text-align: left;">
                                                                        Credit Reference Bureau Certificate?:</label>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <label for="cblEACC" class="control-label" style="text-align: left;">
                                                                        Ethics and Anticorruption Commission Clearance Form?:</label>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <label for="cblKRA" class="control-label" style="text-align: left;">
                                                                        Kenya Revenue Authority(KRA) Complian?:</label>
                                                                </td>
                                                            </tr>
                                                            <tr align="center">
                                                                <td align="center" style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <asp:CheckBoxList ID="cblCertHelb" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <asp:CheckBoxList ID="cblCertGoodConduct" runat="server" RepeatDirection="Horizontal"
                                                                        Width="100%">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <asp:CheckBoxList ID="cblCRB" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <asp:CheckBoxList ID="cblEACC" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                                <td style="border-right: silver thin ridge; border-top: silver thin ridge; border-left: silver thin ridge; border-bottom: silver thin ridge;">
                                                                    <asp:CheckBoxList ID="cblKRA" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div class="row" style="padding-top: 10px;">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnSaveRelevantDocumentsCheck" OnClick="btnSaveRelevantDocumentsCheck_Click" CssClass="btn btn-info btn-sm"
                                                                            Text="Save Relevant Documents" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Referees">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelRefereeStatus" CssClass="label label-success"
                                                                    Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Full Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefFullName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="RefFullName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender33"
                                                                            TargetControlID="RequiredFieldValidator31">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Address:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="RefAddress"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender34"
                                                                            TargetControlID="RequiredFieldValidator32">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Email:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefEmail" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="RefEmail"
                                                                            ValidationExpression="^\S+@\S+\.\S+$" SetFocusOnError="True" ErrorMessage="You must enter a valid email address!" />
                                                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" Enabled="True"
                                                                            TargetControlID="RegularExpressionValidator2">
                                                                        </asp:ValidatorCalloutExtender>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="RefEmail"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender35"
                                                                            TargetControlID="RequiredFieldValidator33">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Mobile No. :</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefMobileNo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="RefMobileNo"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender36"
                                                                            TargetControlID="RequiredFieldValidator34">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Occupation:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefOccupation" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="RefOccupation"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender37"
                                                                            TargetControlID="RequiredFieldValidator35">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Organization:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="RefCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="RefCompany"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender38"
                                                                            TargetControlID="RequiredFieldValidator36">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Designation:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox ID="txtDesignition" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="txtDesignition"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Referee">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender44"
                                                                            TargetControlID="RequiredFieldValidator42">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnrefereedetails" OnClick="btnrefereedetails_Click" CssClass="btn btn-info btn-sm"
                                                                            Text="Add More Referees" ValidationGroup="Referee" />
                                                                        <asp:Button runat="server" ID="btnCancelRef" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gridReferess" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        OnSelectedIndexChanged="gridReferess_SelectedIndexChanged"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                                                            <asp:BoundField DataField="FullName" HeaderText="Full Name">
                                                                                <ItemStyle Wrap="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Address" HeaderText="Address" />
                                                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                                                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                                                                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" />
                                                                            <asp:BoundField DataField="Company" HeaderText="Company" />
                                                                             <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditReferee" Text="Edit" runat="server" CommandName="EditReferees" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditReferee_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveReferee" Text="Remove" runat="server" CommandName="RemoveReferee" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveReferee_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Referees Added!</EmptyDataTemplate>
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="Label3" CssClass="label label-success"
                                                                    Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:TabPanel>
                            </asp:TabContainer>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function () {            
            $('[id *=ddlCitizenship]').select2();
            $('[id *=ddlMaritalStatus]').select2();
            $('[id *=ddlCountyResidence]').select2();
            $('[id *=ddlCountyOfBirth]').select2();
            $('[id *=ddlGender]').select2();
            $('[id *=ddlcitamrelation]').select2();
            $('[id *=ddlPrevEmploymentPositions]').select2();
            $('[id *=ddlCurrenttypePosition]').select2();
            $('[id *=ddlCurrenttypePosition]').select2();
            $("[dir=ltr]").css("width", "100%");
        });
        $('[id *=txtcurrentsalary]').on('keyup', function () {
            $(this).val(function (index, value) {
                return value.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            });
        });
        $('[id *=txtAcceptableSalary]').on('keyup', function () {
            $(this).val(function (index, value) {
                return value.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            });
        });
    </script>
</asp:Content>
