<%@ Page Language="C#" AutoEventWireup="true" Title="Qualification" MasterPageFile="~/Site.Master" CodeBehind="Qualifications.aspx.cs" Inherits="NLCRecruitmentPortal.Pages.Qualifications" %>

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
                    <h3>Educational Background, Professional, Achievements & Work Experience Qualifications
            <br />
                        <span style="font-style: italic; font-family: @KaiTi; color: #a35050;">(Click any Tab and fill your details. Multiple Input
                is required for each type under the Clicked Tab.) </span>
                    </h3>
                </div>
                <div class="awidget-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle col-md-12 m-r-0 m-l-0"
                                ActiveTabIndex="0">
                                <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Education Background">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <legend style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FF9900; line-height: 10px;">Add Education Background</legend>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="educationBQStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Qualification Type:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlQualificationTypes" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlQualificationTypes_SelectedIndexChanged"
                                                                            AutoPostBack="true" AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlQualificationTypes"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EduBG">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender1"
                                                                            TargetControlID="RequiredFieldValidator1">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Course:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlQualification" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlQualification_SelectedIndexChanged"
                                                                            AutoPostBack="true" AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:CheckBox ID="checkOtherCourse" ForeColor="#8C1C03" Text="Other Course:" runat="server" AutoPostBack="true" OnCheckedChanged="checkOtherCourse_CheckedChanged" />
                                                                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="1" ID="txtOtherCourse" CssClass="form-control input-sm" Visible="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlQualification"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EduBG">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender2"
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
                                                                        Grade:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlQualificationGrade" runat="server" CssClass="form-control input-sm" AutoPostBack="true"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description" OnSelectedIndexChanged="ddlQualificationGrade_SelectedIndexChanged">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:CheckBox ID="checkOtherGrade" ForeColor="#8C1C03" Text="Other Grade:" runat="server" AutoPostBack="true" OnCheckedChanged="checkOtherGrade_CheckedChanged" />
                                                                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="1" ID="txtOtherGrade" CssClass="form-control input-sm" Visible="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlQualificationGrade"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EduBG">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender3"
                                                                            TargetControlID="RequiredFieldValidator3">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Institution Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="Institutename" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <label class="control-label" style="color: #8C1C03;">
                                                                            Country of Study:</label>
                                                                        <asp:DropDownList ID="ddlCitizenship" runat="server" CssClass="form-control input-sm" DataValueField="Code" DataTextField="Name"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Value="">Select</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Institutename"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EduBG">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender4"
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
                                                                        Start Date:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker1" class="input-append">
                                                                            <asp:TextBox runat="server" ID="dtStartDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dtStartDate"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="EduBG">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender5"
                                                                                TargetControlID="RequiredFieldValidator5">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        End Date:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker3" class="input-append">
                                                                            <asp:TextBox runat="server" ID="dtEndDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="dtEndDate"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="EduBG">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender6"
                                                                                TargetControlID="RequiredFieldValidator6">
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
                                                                        Qualification (Brief Description):</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="QualificationsDesc" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnsaveedu" OnClick="btnsaveedu_Click" CssClass="btn btn-info btn-sm" Text="Add More Academic Qualification"
                                                                            ValidationGroup="EduBG" />
                                                                        <asp:Button runat="server" ID="btnCancelEdu" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlCitizenship"
                                                                SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                ValidationGroup="EduBG">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender22"
                                                                TargetControlID="RequiredFieldValidator22">
                                                            </asp:ValidatorCalloutExtender>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridQualification" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" ReadOnly="True"
                                                                                SortExpression="ID" />
                                                                            <asp:BoundField DataField="QualificationType" HeaderText="Qualification Type" />
                                                                            <asp:BoundField DataField="QualificationDescr" HeaderText="Course" />
                                                                            <asp:BoundField DataField="QualificationGrade" HeaderText="Grade" />
                                                                            <asp:BoundField DataField="InstitutionName" HeaderText="Institution Name" />
                                                                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="Description" HeaderText="Description" />
                                                                            <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                                                                            <asp:BoundField DataField="Other_Grade" HeaderText="Other_Grade" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                                                                            <asp:BoundField DataField="Country_Code" HeaderText="Country of Study" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditEduBG" Text="Edit" runat="server" CommandName="EditEduBG" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditEduBG_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveEditEduBG" Text="Remove" runat="server" CommandName="RemoveEditEduBG" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveEditEduBG_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Academic Qualification Added!</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Professional Qualifications">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <legend style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FF9900; line-height: 10px;">Add Professional Qualifications</legend>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelProfQualifyStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Professional Qualification:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlProfQual" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description" AutoPostBack="true" OnSelectedIndexChanged="ddlProfQual_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                        <asp:CheckBox ID="chkOtherProfQualify" ForeColor="#8C1C03" Text="Other Professional Qualification:" runat="server" AutoPostBack="true" OnCheckedChanged="chkOtherProfQualify_CheckedChanged" />
                                                                        <asp:TextBox runat="server" ID="txtOtherProfQualify" CssClass="form-control input-sm" Visible="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlProfQual"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="ProfQualify">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender7"
                                                                            TargetControlID="RequiredFieldValidator7">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Institution Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="InstitutenamePQ" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="InstitutenamePQ"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="ProfQualify">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender8"
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
                                                                        Start Date:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker4" class="input-append">
                                                                            <asp:TextBox runat="server" ID="dtStartDatePQ" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dtStartDatePQ"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="ProfQualify">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender9"
                                                                                TargetControlID="RequiredFieldValidator9">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        End Date:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker5" class="input-append">
                                                                            <asp:TextBox runat="server" ID="dtEndDatePQ" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dtEndDatePQ"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="ProfQualify">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender10"
                                                                                TargetControlID="RequiredFieldValidator10">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6"></div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnsaveprofQualify" OnClick="btnsaveprofQualify_Click" CssClass="btn btn-info btn-sm" Text="Add More Professional Qualifications"
                                                                            ValidationGroup="ProfQualify" />
                                                                        <asp:Button runat="server" ID="btnCancelProfQualify" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridProfQualification" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID"></asp:BoundField>
                                                                            <asp:BoundField DataField="InstitutionName" HeaderText="Institution Name" />
                                                                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="Category" HeaderText="Category" />
                                                                            <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                                                                            <asp:BoundField DataField="QualificationDescr" HeaderText="Qualification Description" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditProfQualification" Text="Edit" runat="server" CommandName="EditProfQualify" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditProfQualification_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveProfQualification" Text="Remove" runat="server" CommandName="RemoveProfQualify" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveProfQualification_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Professional Qualification Added!</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Skills And Competencies">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <legend style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FF9900; line-height: 10px;">Add Skills and Competencies</legend>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelskillStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Skills And Competencies:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlSkillsAndComp" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description" AutoPostBack="true" OnSelectedIndexChanged="ddlSkillsAndComp_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                        <asp:CheckBox ID="chkOtherSkills" ForeColor="#8C1C03" Text="Other Skils And Competencies:" runat="server" AutoPostBack="true" OnCheckedChanged="chkOtherSkills_CheckedChanged" />
                                                                        <asp:TextBox runat="server" ID="txtOtherSkillAndComp" CssClass="form-control input-sm" Visible="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlSkillsAndComp"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Skills">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender11"
                                                                            TargetControlID="RequiredFieldValidator11">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <asp:Button runat="server" ID="btnSaveCompetencies" OnClick="btnSaveCompetencies_Click" CssClass="btn btn-info btn-sm" Text="Add More Skills And Competencies"
                                                                        ValidationGroup="Skills" />
                                                                    <asp:Button runat="server" ID="btnCancelSkills" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                        Text="Cancel" CausesValidation="false" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridSkillsAndCompetencies" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" ReadOnly="True"
                                                                                SortExpression="ID" />
                                                                            <asp:BoundField DataField="QualificationDescr" HeaderText="Skills And Competencies" />
                                                                            <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditSkill" Text="Edit" runat="server" CommandName="EditSkill" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditSkill_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveSkill" Text="Remove" runat="server" CommandName="RemoveSkill" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveSkill_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Skills and Competencies Added!</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Professional Bodies">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <legend style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FF9900; line-height: 10px;">Add Proffessional Bodies</legend>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelProfBodiesStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Membership Type:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlmembershipType" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlmembershipType"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Bodies">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender12"
                                                                            TargetControlID="RequiredFieldValidator12">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Institution Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtInstitionName" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtInstitionName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Bodies">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender13"
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
                                                                        Date Of Admission:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker6" class="input-append">
                                                                            <asp:TextBox runat="server" ID="txtDateAdmn" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtDateAdmn"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="Bodies">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender14"
                                                                                TargetControlID="RequiredFieldValidator14">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Date Of Expiry:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker7" class="input-append">
                                                                            <asp:TextBox runat="server" ID="txtDateExp" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtDateExp"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="Bodies">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender15"
                                                                                TargetControlID="RequiredFieldValidator15">
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
                                                                        Next Date Of Renewal:</label>
                                                                    <div class="col-md-8">
                                                                        <div id="datetimepicker8" class="input-append">
                                                                            <asp:TextBox runat="server" ID="txtRewDate" CssClass="add-on picker form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtRewDate"
                                                                                SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                                ValidationGroup="Bodies">
                                                                            </asp:RequiredFieldValidator>
                                                                            <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender16"
                                                                                TargetControlID="RequiredFieldValidator16">
                                                                            </asp:ValidatorCalloutExtender>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Brief Description Of The Group:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtDescr" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtDescr"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Bodies">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender17"
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
                                                                        Status:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlProfBodiesStatus" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true">
                                                                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                                            <asp:ListItem Text="Good Standing" Value="Good Standing"></asp:ListItem>
                                                                            <%--<asp:ListItem Text="Standing" Value="Standing"></asp:ListItem>--%>
                                                                            <asp:ListItem Text="Not of Good Standing" Value="Not of Good Standing"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddlProfBodiesStatus"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="Bodies">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender21"
                                                                            TargetControlID="RequiredFieldValidator21">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-7 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnSaveProfessionalBodies" OnClick="btnSaveProfessionalBodies_Click" CssClass="btn btn-info btn-sm" Text="Add More Professional Bodies"
                                                                            ValidationGroup="Bodies" />
                                                                        <asp:Button runat="server" ID="btnCancelBody" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridProfessionalBodies" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" ReadOnly="True"
                                                                                SortExpression="ID" />
                                                                            <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                                                            <asp:BoundField DataField="QualificationDescr" HeaderText="Qualifications" />
                                                                            <asp:BoundField DataField="Description" HeaderText="Description" />
                                                                            <asp:BoundField DataField="InstitutionName" HeaderText="Institution Name" />
                                                                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="RenewalDate" HeaderText="Renewal Date" DataFormatString="{0:d}"></asp:BoundField>
                                                                            <asp:BoundField DataField="Status" HeaderText="Status" />
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditmembership" Text="Edit" runat="server" CommandName="EditMembership" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditmembership_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveMembership" Text="Remove" runat="server" CommandName="RemoveMembership" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveMembership_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Professional Bodies Added!</EmptyDataTemplate>
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
                                <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Work Experience">
                                    <ContentTemplate>
                                        <div class="awidget full-width">
                                            <div class="tab-content nav nav-tabs">
                                                <div class="active in">
                                                    <div class="form-horizontal">
                                                        <legend style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FF9900; line-height: 10px;">Add Work Experience</legend>
                                                        <div class="row">
                                                            <div class="col-md-12 text-right">
                                                                <asp:Label runat="server" ID="labelWorkExpStatus" CssClass="label label-success" Font-Size="Small" />
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Experience Type:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlWorkExp" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description">
                                                                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlWorkExp"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EXP">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender18"
                                                                            TargetControlID="RequiredFieldValidator18">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Years Of Experience:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:DropDownList ID="ddlWrkExpLevel" runat="server" CssClass="form-control input-sm"
                                                                            AppendDataBoundItems="true" DataValueField="Code" DataTextField="Description">
                                                                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="ddlWrkExpLevel"
                                                                            SetFocusOnError="True" InitialValue="" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EXP">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender19"
                                                                            TargetControlID="RequiredFieldValidator19">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-4">
                                                                        Institution Name:</label>
                                                                    <div class="col-md-8">
                                                                        <asp:TextBox runat="server" ID="txtInstName" CssClass="form-control input-sm"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtInstName"
                                                                            SetFocusOnError="True" ErrorMessage="Field Required!" ForeColor="Red" Display="None"
                                                                            ValidationGroup="EXP">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender runat="server" ID="ValidatorCalloutExtender20"
                                                                            TargetControlID="RequiredFieldValidator20">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <div class="col-md-6 col-md-6 col-md-offset-4">
                                                                        <asp:Button runat="server" ID="btnSaveWorkExp" OnClick="btnSaveWorkExp_Click" CssClass="btn btn-info btn-sm" Text="Add Work Experience"
                                                                            ValidationGroup="EXP" />
                                                                        <asp:Button runat="server" ID="btnCancelExp" OnClick="btnCancel_Click" Visible="false" CssClass="btn btn-warning btn-sm"
                                                                            Text="Cancel" CausesValidation="false" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="gridWorkExp" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                                        CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                                                        HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="ID" HeaderText="#" ReadOnly="True"
                                                                                SortExpression="ID" />
                                                                            <asp:BoundField DataField="Description" HeaderText="Type Of Experience" />
                                                                            <asp:BoundField DataField="QualificationDescr" HeaderText="Years Of Experience" />
                                                                            <asp:BoundField DataField="InstitutionName" HeaderText="Instittion Name"></asp:BoundField>
                                                                            <asp:BoundField DataField="QualificationTypeCode" HeaderText="QualificationTypeCode" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"></asp:BoundField>
                                                                            <asp:BoundField DataField="QualificationsCode" HeaderText="QualificationsCode" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"></asp:BoundField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnEditWorkExp" Text="Edit" runat="server" CommandName="EditWorkExp" CssClass="btn btn-info btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnEditWorkExp_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="">
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="btnRemoveWorkExp" Text="Remove" runat="server" CommandName="RemoveWorkExp" OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-warning btn-xs"
                                                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnRemoveWorkExp_Click" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <PagerStyle CssClass="bs-pagination" />
                                                                        <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                                                        <EmptyDataTemplate>No Work Experience Added!</EmptyDataTemplate>
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
                            </asp:TabContainer>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('[id *=ddlQualificationTypes]').select2();
            $('[id *=ddlQualification]').select2();
            $('[id *=ddlQualificationGrade]').select2();
            $('[id *=ddlCitizenship]').select2();
            $('[id *=ddlProfQual]').select2();
            $('[id *=ddlSkillsAndComp]').select2();
            $('[id *=ddlmembershipType]').select2();
            $('[id *=ddlWorkExp]').select2();
            $('[id *=ddlWrkExpLevel]').select2();
            $("[dir=ltr]").css("width", "100%");
        });
    </script>
</asp:Content>
