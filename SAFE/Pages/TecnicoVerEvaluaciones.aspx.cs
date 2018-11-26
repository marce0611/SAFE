using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class TecnicoVerEvaluaciones : System.Web.UI.Page
    {
        DataSet datosUsuario = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                datosUsuario = (DataSet)Session[NombresSesiones.DatosUsuario];
                grvEvaluacionesTec.DataSource = AccesoWebService.acceso.retornarEvaluacionesPorTecnico();
                grvEvaluacionesTec.DataBind();
                fdsVerEvaluacion.Visible = false;
            }
        }

        protected void btnGuardarTecEva_Click(object sender, EventArgs e)
        {
            Response.Redirect("TecnicoEvaluacion.aspx");
        }

        protected void grvEvaluacionesTec_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = grvEvaluacionesTec.SelectedRow;
            lblFecha.Text = fila.Cells[2].Text;
            lblTipoEval.Text = fila.Cells[3].Text;
            lblEmpresa.Text = fila.Cells[1].Text;
            txtDescripcionPlan.Text = fila.Cells[6].Text;
            txtNotaSupervisor.Text = fila.Cells[7].Text;
            if (!fila.Cells[4].Text.Equals("Rechazada"))
            {
                btnReenviarTecEva.Visible = false;
            }
            if (fdsVerEvaluacion.Visible == false)
            {
                fdsVerEvaluacion.Visible = true;
            }
        }

        protected void grvEvaluacionesTec_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                e.Row.Cells[5].Visible = false;
                e.Row.Cells[6].Visible = false;
                e.Row.Cells[7].Visible = false;
            }
        }
    }
}