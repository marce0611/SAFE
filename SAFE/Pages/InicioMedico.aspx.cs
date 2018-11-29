using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class InicioMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void GridViewTrabajadores_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = this.GridViewTrabajadores.SelectedRow;
                       
           
            string[] info_trabajador = new string[] { row.Cells[1].Text,
            row.Cells[2].Text, row.Cells[3].Text, row.Cells[4].Text,
            row.Cells[5].Text, row.Cells[6].Text, row.Cells[7].Text, row.Cells[8].Text, row.Cells[9].Text, row.Cells[10].Text,};
            Session["Info Trabajador"] = info_trabajador;
            Response.Redirect("AtencionTrabajador.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            GridViewTrabajadores.DataSource = AccesoWebService.acceso.retornarConsulta(txtRut.Text);
            GridViewTrabajadores.DataBind();
        }
    }
}