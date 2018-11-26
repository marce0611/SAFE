using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class TecnicoHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nuevaEvaluacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("TecnicoEvaluacion.aspx");
        }
    }
}