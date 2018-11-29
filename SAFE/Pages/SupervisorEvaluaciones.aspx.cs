using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorEvaluaciones : System.Web.UI.Page,IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlSeleccionarEmpresa.DataSource = AccesoWebService.acceso.retornarEmpresas();
                ddlSeleccionarEmpresa.DataTextField = "NOMBRE_EMPRESA";
                ddlSeleccionarEmpresa.DataValueField = "ID";
                ddlSeleccionarEmpresa.DataBind();
                fdsInfoEvaluacion.Visible = false;
                fdsRechazoEvaluacion.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gridEvaluaciones.DataSource = AccesoWebService.acceso.retornarEvaluacionesSupervisor(decimal.Parse(ddlSeleccionarEmpresa.SelectedValue.ToString()));
            gridEvaluaciones.DataBind();
        }

        protected void gridEvaluaciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gridEvaluaciones.SelectedRow;
            lblFecha.Text = fila.Cells[2].Text;
            lblTipoEval.Text = fila.Cells[3].Text;
            txtDescripcionPlan.Text = fila.Cells[5].Text;
            fdsInfoEvaluacion.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridViewRow fila = gridEvaluaciones.SelectedRow;
            if (AccesoWebService.acceso.actualizarEstadoEvaluacion(decimal.Parse(fila.Cells[4].Text), 1, null))
            {
                mostrarAlerta("Evaluacion aceptada, un ingeniero a cargo debe completar la informacion de la evaluacion");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            fdsRechazoEvaluacion.Visible = true;
        }

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridViewRow fila = gridEvaluaciones.SelectedRow;
            if (AccesoWebService.acceso.actualizarEstadoEvaluacion(decimal.Parse(fila.Cells[4].Text), 2, txtMotivo.Text))
            {
                mostrarAlerta("Evaluacion rechazada, el tecnico encargado debera enviar nuevamente otro formulario");
            }
        }
    }
}