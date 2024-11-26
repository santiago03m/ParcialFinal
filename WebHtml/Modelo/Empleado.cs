using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebHtml.Modelo
{
    public class Empleado
    {
        public string Nombre { get; set; }
        public string Cedula { get; set; }
        public decimal SalarioBasico { get; set; }
        public int NumeroHijos { get; set; }
        public decimal Bonificacion { get; private set; }
        public decimal Deducciones { get; private set; }
        public decimal TotalPagar { get; private set; }

        public void CalcularSalario()
        {
            if (NumeroHijos > 3)
            {
                Bonificacion = 200000;
            }
            else if (NumeroHijos >= 1 && NumeroHijos <= 3)
            {
                Bonificacion = 100000;
            }
            else
            {
                Bonificacion = 0;
            }

            decimal deduccionSalud = SalarioBasico * 0.04m;
            decimal deduccionPension = SalarioBasico * 0.0375m;
            Deducciones = deduccionSalud + deduccionPension;

            TotalPagar = SalarioBasico + Bonificacion - Deducciones;
        }
    }
}