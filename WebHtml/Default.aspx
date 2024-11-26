<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebHtml._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-4">Bienvenido a Almacen</h1>
        <p class="lead">Esta es tu aplicación de gestión de almacenes. Aquí puedes gestionar secciones y artículos de manera eficiente.</p>
        <hr class="my-4">
        <p>Utiliza la barra de navegación para acceder a las diferentes secciones de la aplicación.</p>
        <a class="btn btn-primary btn-lg" href="~/VistaWeb.aspx" role="button">Ver Secciones y Artículos</a>
    </div>
</asp:Content>
