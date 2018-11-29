using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class SupervisorCalendario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                selectEmpresaCalVM.DataSource = AccesoWebService.acceso.retornarEmpresas();
                selectEmpresaCalVM.DataTextField = "NOMBRE_EMPRESA";
                selectEmpresaCalVM.DataValueField = "ID";
                selectEmpresaCalVM.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gridCalendarioMed.DataSource = AccesoWebService.acceso.retornarVisitasMedicasPorEmpresa(decimal.Parse(selectEmpresaCalVM.SelectedValue));
            gridCalendarioMed.DataBind();
        }
    }
}