<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VistaWeb.aspx.cs" Inherits="WebHtml.VistaWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Vista de Secciones y Artículos</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True">
    </asp:GridView>
</asp:Content>
