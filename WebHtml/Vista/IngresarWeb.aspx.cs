using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHtml.Controlador;
using WebHtml.Modelo;

namespace WebHtml.Vista
{
    public partial class IngresarWeb : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            ArticuloController articuloController = new ArticuloController();

            Articulo nuevoArticulo = new Articulo
            {
                Nombre = txtNombre.Text,
                Precio = Convert.ToInt32(txtPrecio.Text),
                Seccion = Convert.ToInt32(ddlSeccion.SelectedValue)
            };

            articuloController.AgregarArticulo(nuevoArticulo);

            txtNombre.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            ddlSeccion.SelectedIndex = 0;

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Producto agregado exitosamente');", true);
        }
    }
}