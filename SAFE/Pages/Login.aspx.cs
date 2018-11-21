using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {

            string usuario = this.txtUsuario.Text;
            string pass = this.txtPass.Text;

            string tipoAcceso = AccesoWebService.acceso.login(usuario, pass);

            switch (tipoAcceso)
            {
                case "2":
                    Response.Redirect("SupervisorHome2.aspx");
                    break;
                case "3":
                    Response.Redirect("IngenieroEvaluación.aspx");
                    break;
                case "4":
                    Response.Redirect("TecnicoHome.aspx");
                    break;
                case "5":
                    Response.Redirect("InicioMedico.aspx");
                    break;
                case "6":

                    break;
                case "7":
                    break;
                default:
                    break;
            }
            //c.login(usuario, pass);
        }

        
    }
}