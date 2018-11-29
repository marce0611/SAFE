using SAFE.ServicioWeb;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class TecnicoEvaluacion : System.Web.UI.Page , IMensajeWeb
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
                    selectTipoEvaluacion.DataSource = AccesoWebService.acceso.retornarTipoEvaluacion();
                    selectTipoEvaluacion.DataTextField = "DESCRIPCION";
                    selectTipoEvaluacion.DataValueField = "ID";
                    selectTipoEvaluacion.DataBind();
                    selectEmpresa.DataSource = AccesoWebService.acceso.retornarEmpresas();
                    selectEmpresa.DataTextField = "NOMBRE_EMPRESA";
                    selectEmpresa.DataValueField = "ID";
                    selectEmpresa.DataBind();
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

        protected void btnGuardarTecEva_Click(object sender, EventArgs e)
        {
            try
            {
                string fechaEval = string.Format("{0}", Request.Form["Fecha_Evaluacion"]);
                string[] partFecha = fechaEval.Split('-');
                string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                DataSet datosUsuario = (DataSet)Session[NombresSesiones.DatosUsuario];
                if (AccesoWebService.acceso.crearEvaluacion(fechaFormat, txtDescripcionPlan.Text, decimal.Parse(selectTipoEvaluacion.SelectedValue), decimal.Parse(selectEmpresa.SelectedValue), decimal.Parse(datosUsuario.Tables[0].Rows[0]["id"].ToString())))
                {
                    mostrarAlerta("Anotación agregada correctamente, espere hasta que un un supervisor evalue su solicitud");
                    Response.Redirect("TecnicoHome.aspx");

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