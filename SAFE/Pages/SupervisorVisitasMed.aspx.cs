using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ServiceModel;
namespace SAFE.Pages
{
    public partial class SupervisorVisitasMed : System.Web.UI.Page, IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    selectMedicoVM.DataSource = AccesoWebService.acceso.retornarMedicos();
                    selectMedicoVM.DataTextField = "NOMBRE";
                    selectMedicoVM.DataValueField = "ID";
                    selectMedicoVM.DataBind();
                    selectEmpresaVM.DataSource = AccesoWebService.acceso.retornarEmpresas();
                    selectEmpresaVM.DataTextField = "NOMBRE_EMPRESA";
                    selectEmpresaVM.DataValueField = "ID";
                    selectEmpresaVM.DataBind();
                }
                catch (EndpointNotFoundException ex)
                {

                    mostrarAlerta(ex.Message);
                }
                catch (CommunicationException ex)
                {
                    mostrarAlerta(ex.Message);
                }
                catch(Exception ex)
                {
                    mostrarAlerta(ex.Message);
                }

            }
        }

        protected void btnGuardarVisitaM_Click(object sender, EventArgs e)
        {
            try
            {
                string fechaEval = string.Format("{0}", Request.Form["Fecha_Plan"]);
                string[] partFecha = fechaEval.Split('-');
                string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                if(AccesoWebService.acceso.crearVisitaMedica(fechaFormat, decimal.Parse(selectEmpresaVM.SelectedValue), decimal.Parse(selectMedicoVM.SelectedValue)))
                {
                    mostrarAlerta("Visita Medica ingresada correctamente");
                }
            }
            catch (CommunicationException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch(TimeoutException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch(Exception ex)
            {
                mostrarAlerta(ex.Message);
            }
            
        }

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }
    }
}