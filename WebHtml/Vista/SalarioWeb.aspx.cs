using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHtml.Modelo;

namespace WebHtml.Vista
{
    public partial class SalarioWeb : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            Empleado empleado = new Empleado
            {
                Nombre = txtNombre.Text,
                Cedula = txtCedula.Text,
                SalarioBasico = Convert.ToDecimal(txtSalarioBasico.Text),
                NumeroHijos = Convert.ToInt32(txtNumeroHijos.Text)
            };

            empleado.CalcularSalario();

            string resultado = $"Nombre: {empleado.Nombre}<br/>" +
                               $"Cédula: {empleado.Cedula}<br/>" +
                               $"Salario Básico: {empleado.SalarioBasico:C}<br/>" +
                               $"Número de Hijos: {empleado.NumeroHijos}<br/>" +
                               $"Bonificación: {empleado.Bonificacion:C}<br/>" +
                               $"Deducciones: {empleado.Deducciones:C}<br/>" +
                               $"Total a Pagar: {empleado.TotalPagar:C}";

            lblResultado.Text = resultado;
        }
    }
}