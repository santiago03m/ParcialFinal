<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarWeb.aspx.cs" Inherits="WebHtml.Vista.IngresarWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingresar Producto</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Agregar Producto</h2>
            <div class="form-group">
                <label for="nombre">Nombre del Producto:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="precio">Precio:</label>
                <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="seccion">Sección:</label>
                <asp:DropDownList ID="ddlSeccion" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceSecciones" DataTextField="nombre" DataValueField="codigo">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceSecciones" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString.ProviderName %>" 
                    SelectCommand="SELECT codigo, nombre FROM Seccion">
                </asp:SqlDataSource>
            </div>
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Producto" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
        </div>
    </form>
</body>
</html>
