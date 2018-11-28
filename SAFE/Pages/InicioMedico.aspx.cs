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

            GridViewTrabajadores.DataSource = AccesoWebService.acceso.consulta();
            /*int charLocation = row.Cells[10].Text.IndexOf("<", StringComparison.Ordinal);//codigo para que me saque el score hasta que encuentre el '<' del tag
            string score = row.Cells[10].Text.Substring(0, charLocation); //continuacion
            //row.Cells[10].Style.Add = ("width","20px");*/
           // AccesoWebService ac = new AccesoWebService.
            string[] info_trabajador = new string[] { row.Cells[1].Text,
                row.Cells[2].Text, row.Cells[3].Text, row.Cells[4].Text,
                row.Cells[5].Text, row.Cells[7].Text, row.Cells[8].Text, row.Cells[9].Text};
            Session["Info Trabajador"] = info_trabajador;
            Response.Redirect("AtencionTrabajador.aspx");
        }
    }
}