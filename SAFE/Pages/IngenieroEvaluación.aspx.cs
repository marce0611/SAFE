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
    public partial class IngenieroEvaluación : System.Web.UI.Page , IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    gridIngEvaluacion.DataSource = AccesoWebService.acceso.retornarEvaluacionesPorIngeniero();
                    gridIngEvaluacion.DataBind();
                    fdsInfoEvaluacion.Visible = false;
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

        protected void gridIngEvaluacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gridIngEvaluacion.SelectedRow;
            lblFechaEvaluacion.Text = fila.Cells[2].Text;
            lblTecnico.Text = fila.Cells[1].Text;
            lblTipoEvaluación.Text = fila.Cells[3].Text;
            lblIdEvaluación.Text = fila.Cells[5].Text;
            txtIngDescEvaluacion.Text = fila.Cells[6].Text;
            if (fdsInfoEvaluacion.Visible == false)
            {
                fdsInfoEvaluacion.Visible = true;
            }
        }

        protected void btnGenerarIngEva_Click(object sender, EventArgs e)
        {
            DataSet datosUsuario = (DataSet)Session[NombresSesiones.DatosUsuario];
            try
            {
                if (AccesoWebService.acceso.crearInformeIngeniero(txtIngDescripcionPlan.Text, decimal.Parse(datosUsuario.Tables[0].Rows[0]["ID"].ToString()), decimal.Parse(lblIdEvaluación.Text)))
                {
                    mostrarAlerta("Datos Ingresados Correctamente");
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

        protected void gridIngEvaluacion_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                e.Row.Cells[5].Visible = false;
                e.Row.Cells[6].Visible = false;
            }
        }

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }
    }
}