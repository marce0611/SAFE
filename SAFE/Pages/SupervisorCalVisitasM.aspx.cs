using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorCalendario : System.Web.UI.Page, IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    selectEmpresaCalVM.DataSource = AccesoWebService.acceso.retornarEmpresas();
                    selectEmpresaCalVM.DataTextField = "NOMBRE_EMPRESA";
                    selectEmpresaCalVM.DataValueField = "ID";
                    selectEmpresaCalVM.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                gridCalendarioMed.DataSource = AccesoWebService.acceso.retornarVisitasMedicasPorEmpresa(decimal.Parse(selectEmpresaCalVM.SelectedValue));
                gridCalendarioMed.DataBind();
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

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }
    }
}