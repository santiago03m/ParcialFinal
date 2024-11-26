<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleWeb.aspx.cs" Inherits="WebHtml.DetalleWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>RELACIÓN DE SECCIONES Y ARTÍCULOS</h3>

    <p>
        Sección:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceSecciones" DataTextField="nombre" DataValueField="codigo" AutoPostBack="True">
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="SqlDataSourceSecciones" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString.ProviderName %>" 
            SelectCommand="SELECT codigo, nombre FROM [Seccion]">
        </asp:SqlDataSource>

    </p>

    <h4>Detalles de Artículos</h4>
    <asp:GridView ID="GridViewArticulos" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSourceArticulos" Width="100%" BorderStyle="Solid" BorderWidth="1px" GridLines="Both">
        <Columns>
            <asp:BoundField DataField="codigo" HeaderText="Código Artículo" ReadOnly="True" SortExpression="codigo" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ManejoAlmacenDBConnectionString.ProviderName %>" 
        SelectCommand="SELECT codigo, nombre, precio FROM [Articulos] WHERE [seccion] = @seccion">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="seccion" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
