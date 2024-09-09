<%@ Page Language="C#" Title="Vacancies" AutoEventWireup="true" CodeBehind="Vacancies.aspx.cs" MasterPageFile="~/Site.Master" Inherits="NLCRecruitmentPortal.Pages.Vacancies" %>

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
</asp:Content>
