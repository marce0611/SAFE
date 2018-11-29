using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorCurso : System.Web.UI.Page, IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCapacitacion.DataSource = AccesoWebService.acceso.retornarCapacitaciones();
                ddlCapacitacion.DataTextField = "DESCRIPCION";
                ddlCapacitacion.DataValueField = "ID";
                ddlCapacitacion.DataBind();
            }
        }

        protected void btnGuardarCurso_Click(object sender, EventArgs e)
        {
            if (AccesoWebService.acceso.crearCurso(txtDescripcion.Text, decimal.Parse(ddlCapacitacion.SelectedValue)))
            {
                mostrarAlerta("Curso ingresado correctamente");
            }
        }

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }
    }
}