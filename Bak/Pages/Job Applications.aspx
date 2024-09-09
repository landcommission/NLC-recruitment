<%@ Page Language="C#" Title="Job Applications" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job Applications.aspx.cs" Inherits="NLCRecruitmentPortal.Pages.Job_Applications" %>

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

    <div class="row">
        <div class="col-md-12 text-right">
            <asp:Label runat="server" ID="labelInfoStatus" CssClass="label label-success" Font-Size="Small" />
        </div>
        <asp:Label ID="lblNeedCode" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblJobApplied" runat="server" BackColor="BurlyWood" Visible="False"></asp:Label>
        <asp:Label ID="lblJobRefNo" runat="server" Visible="False"></asp:Label>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="Alljobs" runat="server">
            <strong>Available Positions</strong>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Requisition_No"
                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                            <Columns>
                                <asp:BoundField DataField="Requisition_No" HeaderText="Requisition No" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" ReadOnly="True"></asp:BoundField>
                                <asp:BoundField DataField="Job_ID" HeaderText="Job Ref No." ReadOnly="True" ></asp:BoundField>
                                <%--<asp:BoundField DataField="Date" HeaderText="Date" Visible="false" DataFormatString="{0:d}"></asp:BoundField>--%>
                                <asp:BoundField DataField="Job_Description" HeaderText="Description" />
                                <asp:BoundField DataField="Required_Positions" HeaderText="Positions" DataFormatString="{0:0}"></asp:BoundField>
                                <asp:BoundField DataField="Opening_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Opening Date"></asp:BoundField>
                                <asp:BoundField DataField="Closing_Date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Closing Date"></asp:BoundField>
                                <asp:TemplateField HeaderText="" HeaderStyle-Width="10%">
                                    <ItemTemplate>
                                        <asp:Button ID="btnview" Text="Click here to Apply" runat="server" CommandName="view" CssClass="btn btn-info btn-xs"
                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="btnview_Click" OnClientClick="return confirm('Please make sure you have updated your profile before applying for this job');" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDocument" runat="server" OnClick="lnkDocument_Click" ForeColor="#a35050" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="View Job Description & Requirements"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle CssClass="bs-pagination" />
                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                            <EmptyDataTemplate>No available vacancies</EmptyDataTemplate>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="ViewJob" runat="server">
            <!-- Page title -->
            <div class="awidget full-width">
                <div class="row">
                    <div class="col-md-12">
                        <div class="awidget-head">
                            <h3 style="color: #a35050;">Please make sure you have updated your profile before submitting the application</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <label class="control-label" id="jobTitle" runat="server"></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="awidget-head">
                            <h3 style="color: #a35050;">Please Fill The Requirements Form Below (Select *Yes* if you have the qualification, *No* if you don't have 
                                the qualification and *Related* if you have a Related Qualification and type it's description)
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="gridRequirements" runat="server" AutoGenerateColumns="False" DataKeyNames="Job_ID"
                                CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                                HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46" OnRowDataBound="gridRequirements_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Job_ID" HeaderText="Job ID" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"></asp:BoundField>
                                    <asp:BoundField DataField="Qualification_Type" HeaderText="Qualification_Type" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                    <asp:BoundField DataField="Qualification_Code" HeaderText="Qualification_Code" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                    <asp:BoundField DataField="Qualification_Description" HeaderText="Requirement Description." HeaderStyle-Width="40%" />
                                    <asp:TemplateField HeaderText="Requirements Check List">
                                        <ItemTemplate>
                                            <div class="row">
                                                <div class="form-group">
                                                    <span class="control-label col-md-7">
                                                        Do you have this Qualification?</span>
                                                    <div class="col-md-5">
                                                        <asp:DropDownList ID="ddlChekRequirement" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlChekRequirement_SelectedIndexChanged" CssClass="form-control input-sm"
                                                            AppendDataBoundItems="true">
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Related Qualification Description">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" ID="txtRelatedDescription" Enabled="false" TextMode="MultiLine" CssClass="form-control input-sm"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle CssClass="bs-pagination" />
                                <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                                <EmptyDataTemplate>No Requirements found!</EmptyDataTemplate>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <div class="row" runat="server">
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-offset-7">
                                <asp:Button runat="server" ID="btnSubmitApplication" OnClick="btnSubmitApplication_Click" CssClass="btn btn-success btn-sm"
                                    Text="Submit Application" OnClientClick="return confirm('Are you certain you want to apply for this Job?');" />
                                <asp:Button runat="server" ID="btnCancel" OnClick="btnback_Click" CssClass="btn btn-warning btn-sm"
                                    Text="Cancel" CausesValidation="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
        </asp:View>
        <asp:View ID="ArtworkView" runat="server">
            <table width="100%">
                <tr>
                    <td>
                        <asp:Button ID="btnapply" runat="server" Text="Apply for this Job" CssClass="btn btn-info btn-sm" Visible="false" OnClick="btnapply_Click"/>
                    </td>
                    <td align="right">
                        <asp:Button ID="btnback" runat="server" Text="Back to all Jobs" CssClass="btn btn-warning btn-sm" OnClick="btnback_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 22px">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                        <iframe runat="server" id="myPDF" src="#" width="100%" height="800" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="MyJobs" runat="server">
            <strong>My Job Applications</strong>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:GridView ID="gridMyApplications" runat="server" AutoGenerateColumns="False"
                            CssClass="table table-striped dt-responsive table-bordered nowrap" HeaderStyle-BackColor="#8B6914"
                            HeaderStyle-ForeColor="White" RowStyle-ForeColor="#343d46">
                            <Columns>
                                <asp:BoundField DataField="JobNo" HeaderStyle-Font-Size="Large" ItemStyle-Font-Size="Large" HeaderText="Ref. No" />
                                <asp:BoundField DataField="Position" HeaderStyle-Font-Size="Large" ItemStyle-Font-Size="Large" HeaderText="Position" />
                                <asp:BoundField DataField="Status" HeaderStyle-Font-Size="Large" ItemStyle-Font-Size="Large" HeaderText="Status" />
                            </Columns>
                            <PagerStyle CssClass="bs-pagination" />
                            <SelectedRowStyle ForeColor="Green" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                            <EmptyDataTemplate>No jobs Applied.</EmptyDataTemplate>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
