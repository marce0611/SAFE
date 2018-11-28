using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorPlan : System.Web.UI.Page
    {
        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                try
                {
                    //selectEstado.DataSource = AccesoWebService.acceso.;
                    //selectEstado.DataTextField = "DESCRIPCION";
                    //selectEstado.DataValueField = "ID";
                    //selectEstado.DataBind();
                    selectEmpresaPlan.DataSource = AccesoWebService.acceso.retornarEmpresas();
                    selectEmpresaPlan.DataTextField = "NOMBRE_EMPRESA";
                    selectEmpresaPlan.DataValueField = "ID";
                    selectEmpresaPlan.DataBind();
                    
                }
                catch (EndpointNotFoundException ex)
                {

                    mostrarAlerta(ex.Message);
                }
                catch (CommunicationException ex)
                {
                    mostrarAlerta(ex.Message);
                }
                catch (Exception ex)
                {
                    mostrarAlerta(ex.Message);
                }

            }

        }

        protected void btnGuardarPlan_Click(object sender, EventArgs e)
        {
            try
            {
                string fechaPlan = string.Format("{0}", Request.Form["fechaPlan"]);
                string[] partFecha = fechaPlan.Split('-');
                string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                if (AccesoWebService.acceso.crearPlanCapacitacion(txtDescripcionPlan.Text, int.Parse(selectEmpresaPlan.SelectedValue), fechaFormat)) //Cambiar 1 cuandon se creen bien las sesiones
                {
                    mostrarAlerta("Plan de Capacitación agregado correctamente");
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