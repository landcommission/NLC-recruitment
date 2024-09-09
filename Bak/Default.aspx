<%@ Page Title="Recruitment" Language="C#" MasterPageFile="~/LoginX.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NLCRecruitmentPortal._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <script type="text/javascript">
        $(document).ready(function () {
            if (($(location).attr('href')).indexOf("q=i") != -1) {
                swal('Sorry!', 'Dear applicant, you have been signed out because of being inactive for more than 5 minutes. Kindly login again.', 'warning').then(function () {
                    window.location = "/";
                });
            }
        });
        $(document).on('click', '.toggle-password', function () {
            try {
                $(this).toggleClass("fa-eye fa-eye-slash");
                if ($(this).hasClass("txtPassword")) {
                    var input = $("[id*=txtPassword]");
                    input.attr('type') === 'password' ? input.attr('type', 'text') : input.attr('type', 'password')
                }
                var input2 = $("[id*=RegPassword1]");
                if ($(this).hasClass("RegPassword1")) {
                    input2.attr('type') === 'password' ? input2.attr('type', 'text') : input2.attr('type', 'password')
                }
                if ($(this).hasClass("RegPassword2")) {
                    var input3 = $("[id*=RegPassword2]");
                    input3.attr('type') === 'password' ? input3.attr('type', 'text') : input3.attr('type', 'password')
                }
            } catch (err) {
                alert("Error=" + err);
            }
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page content -->
    <div class="container" style="min-height: 480px;">
        <div class="awidget login-reg">
            <div class="page-title text-center">
                <h1>
                    <a href="">
                        <img src="/Img/Logo.png" width="100" alt="logo" class="logo-default hidden-sm hidden-xs" />
                        <%-- <img src="/Img/SK_Logo_1.png" width="200" alt="logo" class="logo-default hidden-sm hidden-xs" />--%>
                    </a>
                </h1>
            </div>
            <div class="awidget-body" style="padding: 0px 0px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="Login" runat="server">
                        <div class="page-title text-center">
                            <h3>Login</h3>
                            <br />
                            <i style="font-size: small;"><strong><span style="color: #8C1C03;">NB: Please note that you need to register 
                        an account before you proceed.</span></strong></i><hr />
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-3" style="font-size: 14px; color: #343d46;">
                                        ID Number:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUserName"
                                            SetFocusOnError="True" ErrorMessage="ID or Passport number Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="LogIn">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                            TargetControlID="RequiredFieldValidator9">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-3" style="font-size: 14px; color: #343d46;">
                                        Password:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtPassword" runat="server" AutoCompleteType="Disabled" EnableTheming="True" TextMode="Password" CssClass="form-control input-sm">                                          
                                        </asp:TextBox>
                                        <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password txtPassword" style="float: right;"></span>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPassword"
                                            SetFocusOnError="True" ErrorMessage="password Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="LogIn">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                            TargetControlID="RequiredFieldValidator10">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-7 col-md-offset-3">
                                        <asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_Click" ValidationGroup="LogIn" CssClass="btn btn-primary btn-sm" Text="Login" />
                                        <asp:Button runat="server" ID="btnGoToRegisterFromLogin" OnClick="btnGoToRegisterFromLogin_Click" CausesValidation="false" CssClass="btn btn-info btn-sm" Text="Register" />
                                        <asp:Button runat="server" ID="btnGoToResetFromLogin" OnClick="btnGoToResetFromLogin_Click" CausesValidation="false" CssClass="btn btn-default btn-sm" Text="Forgot Password?" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="ForgotPass" runat="server">
                        <div class="page-title text-center">
                            <h3>Reset Your Password</h3>
                            <hr />
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-3">
                                        Email Address:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="emailReset" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="emailReset"
                                            ValidationExpression="^\S+@\S+\.\S+$" SetFocusOnError="True" ErrorMessage="You must enter a valid email address!" ValidationGroup="Reset" />
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender12" runat="server" Enabled="True"
                                            TargetControlID="RegularExpressionValidator4">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="emailReset"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="Reset">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
                                            TargetControlID="RequiredFieldValidator8">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-7 col-md-offset-3">
                                        <asp:Button runat="server" ID="btnResetPasswword" OnClick="btnResetPasswword_Click" ValidationGroup="Reset" CssClass="btn btn-default btn-sm" Text="Send Password" />
                                        <asp:Button runat="server" ID="btnGoToRegister" OnClick="btnGoToRegister_Click" CausesValidation="false" CssClass="btn btn-info btn-sm" Text="Register" />
                                        <asp:Button runat="server" ID="btnGoToLoginFromReset" OnClick="btnGoToLoginFromReset_Click" CausesValidation="false" CssClass="btn btn-primary btn-sm" Text="Login" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="signup" runat="server">
                        <div class="page-title text-center">
                            <h3>Register Here</h3>
                            <hr />
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Email Address:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="useremail" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="useremail"
                                            ValidationExpression="^\S+@\S+\.\S+$" SetFocusOnError="True" ErrorMessage="You must enter a valid email address!" ValidationGroup="signup" />
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" Enabled="True"
                                            TargetControlID="RegularExpressionValidator1">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="useremail"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
                                            TargetControlID="RequiredFieldValidator4">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        First Name:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Fnames0" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fnames0"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
                                            TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Middle Name:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Mnames1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Mnames1"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                            TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Last Name:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Lnames2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Lnames2"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                            TargetControlID="RequiredFieldValidator3">
                                        </asp:ValidatorCalloutExtender>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Mobile :</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Phone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Phone"
                                            ErrorMessage="Enter Valid Mobile Number!" ForeColor="Red" ValidationExpression="^[\d+$]{6,10}" ValidationGroup="signup">
                                        </asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                            TargetControlID="RegularExpressionValidator5">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Phone"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
                                            TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        ID Number:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="IdNo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdNo"
                                            ErrorMessage="Enter Valid ID Number!" ForeColor="Red" ValidationExpression="^[\d+$]{6,10}" ValidationGroup="signup">
                                        </asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                            TargetControlID="RegularExpressionValidator2">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="IdNo"
                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                            ValidationGroup="signup">
                                        </asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                            TargetControlID="RequiredFieldValidator5">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Password:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="RegPassword1" runat="server" AutoCompleteType="Disabled" EnableTheming="True" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                                        <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password RegPassword1" style="float: right;"></span>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ErrorMessage="Password must have minimum of 8 characters</br> with at least one numeric character. e.g Test#@123"
                                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,20}$" ControlToValidate="RegPassword1" runat="server" ValidationGroup="signup">
                                        </asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                            TargetControlID="RegularExpressionValidator3">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label col-md-4">
                                        Confirm Password:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="RegPassword2" runat="server" AutoComplete="on" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                                        <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password RegPassword2" style="float: right;"></span>
                                        <asp:CompareValidator ID="comparePasswords"
                                            runat="server" ControlToCompare="RegPassword1" ControlToValidate="RegPassword2" ForeColor="Red"
                                            ErrorMessage="Your passwords do not match up!" ValidationGroup="signup"></asp:CompareValidator>
                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                            TargetControlID="comparePasswords">
                                        </asp:ValidatorCalloutExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-7 col-md-offset-4">
                                        <asp:Button runat="server" ID="btnsignup" OnClick="btnsignup_Click" ValidationGroup="signup" CssClass="btn btn-info btn-sm" Text="Register" />
                                        <asp:Button runat="server" ID="btnGoToLogin" OnClick="btnGoToLogin_Click" CausesValidation="false" CssClass="btn btn-primary btn-sm" Text="Login" />
                                        <asp:Button runat="server" ID="bntGoToForgotPassword" OnClick="bntGoToForgotPassword_Click" CausesValidation="false" CssClass="btn btn-default btn-sm" Text="Forgot Password?" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RegPassword1"
                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                ValidationGroup="signup">
                            </asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                TargetControlID="RequiredFieldValidator6">
                            </asp:ValidatorCalloutExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RegPassword2"
                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                ValidationGroup="signup">
                            </asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                TargetControlID="RequiredFieldValidator7">
                            </asp:ValidatorCalloutExtender>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            //window.location.reload(true);
            /* if my "reload" var isn't set locally.. getItem will be false */
            if (!localStorage.getItem("reload")) {
                /* set reload to true and then reload the page */
                localStorage.setItem("reload", "true");
                location.reload();
            }
            /* after reloading remove "reload" from localStorage */
            else {
                localStorage.removeItem("reload");
                // localStorage.clear(); // or clear it, instead
            }
        });
    </script>
</asp:Content>
