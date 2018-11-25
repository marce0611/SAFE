using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorCrearCap : System.Web.UI.Page
    {
        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //ddlPlanCap.DataSource = AccesoWebService.acceso *Falta plan d capacitacion


         }

        protected void btnGuardarCap_Click(object sender, EventArgs e)
        {
            try
            {
                string fechaComienzo = string.Format("{0}", Request.Form["fechaComienzo"]);
                string[] partFecha = fechaComienzo.Split('-');
                string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                if (AccesoWebService.acceso.crearCapacitacion(txtDescripcionCap.Text, decimal.Parse(txtMinParticipantes.Text), txtExpositor.Text, fechaFormat, ddlPlanCap.SelectedValue, 1)) //Cambiar 1 cuandon se creen bien las sesiones
                {
                    mostrarAlerta("Capacitación agregada correctamente");
                }
            }
            catch (CommunicationException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch (TimeoutException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch (Exception ex)
            {
                mostrarAlerta(ex.Message);
            }
        }
    }
}