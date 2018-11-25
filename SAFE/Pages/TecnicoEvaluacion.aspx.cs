using SAFE.ServicioWeb1;
using System;
using System.Collections.Generic;
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
                    grvEvaluacionesTec.DataSource = AccesoWebService.acceso.retornarEvaluacionesPorTecnico();
                    grvEvaluacionesTec.DataBind();
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
                if (AccesoWebService.acceso.crearEvaluacion(fechaFormat, txtDescripcionPlan.Text, decimal.Parse(selectTipoEvaluacion.SelectedValue), decimal.Parse(selectEmpresa.SelectedValue), 1)) //Cambiar 1 cuandon se creen bien las sesiones
                {
                    mostrarAlerta("Anotación agregada correctamente, espere hasta que un un supervisor evalue su solicitud");
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

        protected void grvEvaluacionesTec_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                e.Row.Cells[4].Visible = false;
                e.Row.Cells[5].Visible = false;
            }
        }
    }
}