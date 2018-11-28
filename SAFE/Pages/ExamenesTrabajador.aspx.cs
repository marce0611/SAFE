using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class ExamenesTrabajador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ddlExamen.DataSource = AccesoWebService.acceso.obtenerTipoExamen();
            ddlExamen.DataTextField = "TIPO_EXAMEN";
            ddlExamen.DataValueField = "ID";
            ddlExamen.DataBind();
            
        }
    }
}