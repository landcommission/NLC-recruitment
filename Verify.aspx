<%@ Page Language="C#" Title="Verify" AutoEventWireup="true" MasterPageFile="~/LoginX.Master" CodeBehind="Verify.aspx.cs" Inherits="NLCRecruitmentPortal.Verify" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" charset="utf8" src="<%= Page.ResolveUrl("~/DataTable/JS/jquery-1.11.3.min.js")%>"></script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <span style="font-family: 'Palatino Linotype'; font-size: large">



        <asp:Label ID="msg" runat="server" Text=""></asp:Label>

        <br />
        <br />
        <br />
        <span id="goToLogin" runat="server">
            <strong>C</strong><span class="style2" __designer:mapid="229"><i __designer:mapid="22a"><strong __designer:mapid="22b"><span __designer:mapid="22e">lick
                        <asp:HyperLink ID="HyperLink3" runat="server"
                            NavigateUrl="~/Default.aspx">here</asp:HyperLink>
                &nbsp;to login</span></strong></i></span>
        </span>
    </span>
    <br />
    <br />



</asp:Content>
