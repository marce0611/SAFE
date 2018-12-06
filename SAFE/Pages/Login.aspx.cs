using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE
{
    public partial class Login : System.Web.UI.Page, IMensajeWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {

            try
            {
                string usuario = this.txtUsuario.Text;
                string pass = this.txtPass.Text;

                DataSet infoUsuario = AccesoWebService.acceso.login(usuario, pass);


                switch (infoUsuario.Tables[0].Rows[0]["ID Perfil"].ToString())
                {
                    case "2":
                        Session[NombresSesiones.DatosUsuario] = infoUsuario;
                        Response.Redirect("SupervisorHome2.aspx");
                        break;
                    case "3":
                        Session[NombresSesiones.DatosUsuario] = infoUsuario;
                        Response.Redirect("IngenieroEvaluación.aspx");
                        break;
                    case "4":
                        Session[NombresSesiones.DatosUsuario] = infoUsuario;
                        Response.Redirect("TecnicoHome.aspx");
                        break;
                    case "5":
                        Session[NombresSesiones.DatosUsuario] = infoUsuario;
                        Response.Redirect("InicioMedico.aspx");
                        break;
                    case "6":

                        break;
                    case "7":
                        break;
                    default:
                        mostrarAlerta("Este tipo de usuario no puede acceder a la pagina");
                        break;
                }

            }
            catch (IndexOutOfRangeException ex)
            {
                mostrarAlerta("Usuario no registrado en el sistema, intente nuevamente: " + ex.Message);
            }
            //c.login(usuario, pass);
        }

        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }
    }
}