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
            ServiceReference2.ServicioPaginaWebClient c = new ServiceReference2.ServicioPaginaWebClient();

            string usuario = this.txtUsuario.Text;
            string pass = this.txtPass.Text;
            //c.login(usuario, pass);
        }

        
    }
}