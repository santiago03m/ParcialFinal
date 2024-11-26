<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalarioWeb.aspx.cs" Inherits="WebHtml.Vista.SalarioWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calcular Salario</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Calcular Salario de Empleado</h2>
            <div class="form-group">
                <label for="nombre">Nombre del Empleado:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="cedula">Cédula o Identificación Ciudadana:</label>
                <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="salarioBasico">Salario Básico:</label>
                <asp:TextBox ID="txtSalarioBasico" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="numeroHijos">Número de Hijos:</label>
                <asp:TextBox ID="txtNumeroHijos" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular Salario" CssClass="btn btn-primary" OnClick="btnCalcular_Click" />
            <div class="form-group mt-3">
                <label for="resultado">Resultado:</label>
                <asp:Label ID="lblResultado" runat="server" CssClass="form-control"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>