using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class Visitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet info = (DataSet)Session[NombresSesiones.DatosUsuario];
            GridViewVisitas.DataSource = AccesoWebService.acceso.obtenerVisitaPorId(decimal.Parse(info.Tables[0].Rows[0]["id"].ToString()));
            GridViewVisitas.DataBind();
        }
    }
}