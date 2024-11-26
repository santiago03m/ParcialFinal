using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHtml.Modelo
{
    public class Articulo
    {
        public int Codigo { get; set; }
        public string Nombre { get; set; }
        public int Precio { get; set; }
        public int Seccion { get; set; }
    }
}