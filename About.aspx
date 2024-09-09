<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="NLCRecruitmentPortal.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="list2" style="padding-left: 40px;">
        <h3>How To Apply</h3>

        <ol style="font-family: Arial, sans-serif; font-size: medium; margin-left: 20px">
            <li>
                <p>Navigate the system as guided by the links on the left side bar.</p>
            </li>
            <li>
                <p>
                    Click on 
                            <asp:HyperLink runat="server" ID="HyperLink11" class="report_seo" NavigateUrl="~/Pages/Application.aspx"
                                Font-Size="12pt">Applicant Profile</asp:HyperLink>&nbsp;to fill the sections contained therein.
                </p>
            </li>
            <li>
                <p>
                    Click on the
                            <asp:HyperLink runat="server" ID="HyperLink6" class="report_seo" NavigateUrl="~/Pages/Job Applications.aspx?N=yww4Q9JSiKPyyVZ89sYMeA=="
                                Font-Size="12pt">Available Vacancies</asp:HyperLink>&nbsp;link.
                </p>
            </li>

        </ol>
        <p style="font-size: 24px; margin-bottom: 10px">
            Here you will see a list of all available vacancies that are open for application.
        </p>
        <ol style="font-family: Arial, sans-serif; font-size: medium; margin-left: 20px">
            <li>
                <p>Click on the "<b style="color:#05AFF2">Click Here To View Job Description</b>" link against the job you wish to apply for.</p>
            </li>
            <li>
                <p>You will see a document containing the Job Description details.</p>
            </li>
            (<i style="color:#05AFF2">Depending on your browser's settings, this document will either appear on the center of your page, or as a download.</i>)
        <li>
            <p>
                Click on the '<b style="color:#05AFF2">Apply for this Job</b>' button once you confirm the Job Description Details and this job will appear on the "<b style="color:#05AFF2">My Job 
            Applications</b>&quot; page.
            </p>
        </li>
            <li>
                <p>
                    You can monitor the status of your job application from
                            <asp:HyperLink runat="server" ID="HyperLink7" class="report_seo" NavigateUrl="~/Pages/Job Applications.aspx?N=Ll/hsmRsS4nruA/RfNCizA=="
                                Font-Size="12pt">My Job Applications</asp:HyperLink>
                </p>
            </li>
            <%--<li><p>You can also reject your&nbsp; job applications from "My Job applications page&quot;</p></li>--%>
            <li>
                <p>An email will be sent to your mail box when the status of your application changes.</p>
            </li>

            NB: You only need to fill your profile once.
        <br />
            Future applications will only require you to navigate to the 
                            <asp:HyperLink runat="server" ID="HyperLink12"
                                class="report_seo" NavigateUrl="~/Pages/Job Applications.aspx?N=yww4Q9JSiKPyyVZ89sYMeA=="
                                Font-Size="12pt">Available Vacancies</asp:HyperLink>&nbsp;page and click on the 'Apply for this Job' button.

        </ol>
        <span style="display: none;">
            <h3>Application Status</h3>

            <ol style="font-family: Arial, sans-serif; font-size: medium; margin-left: 20px">
                <li>
                    <p>Applied: New application.</p>
                </li>
                <li>
                    <p>Long List: Application being considered.</p>
                </li>
                <li>
                    <p>Short List: To be invited for interview.</p>
                </li>
                <li>
                    <p>Interview: Invited for interview.</p>
                </li>
                <li>
                    <p>Selected: You have been appointed for the job.</p>
                </li>
                <li>
                    <p>Not Selected: Application unsuccessful.</p>
                </li>
            </ol>

        </span>

        <h3>For Applicants</h3>

        <ol style="font-family: Arial, sans-serif; font-size: medium; margin-left: 20px">
            <li>
                <p>It is a serious offence to willfully give false information.</p>
            </li>
            <li>
                <p>All parts of this form must be completed by all applicants.</p>
            </li>
            <!--<li><p>Do not apply for any post unless you possess all the qualifications given in the advertisement.</p></li>-->
            <li>
                <p>If you are invited for an interview, bring your original and <b>up-to-date</b> certificates and testimonials.</p>
            </li>

        </ol>
    </div>
</asp:Content>
