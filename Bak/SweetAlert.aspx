<%@ Page Language="C#" AutoEventWireup="true" Title="Sweet" MasterPageFile="~/Site.Master" CodeBehind="SweetAlert.aspx.cs" Inherits="NLCRecruitmentPortal.SweetAlert" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
    <script type="text/javascript">
        $("#success").click(function () {
            Swal.fire('Saved!', '', 'success');
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <button id="success" onclick="return   Swal.fire('Saved!', '', 'success');">Success</button>
    <%--    <asp:Button ID="btnapply" runat="server" Text="" CssClass="btn btn-info btn-sm" OnClientClick="return success();" />--%>
</asp:Content>
