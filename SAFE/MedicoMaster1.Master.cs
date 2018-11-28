using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE
{
    public partial class MedicoMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //string[] info = (string[])Session["Info Trabajador"];
                //this.lblEstado = info[9];
                //this.lblRut.Text = info[8];
                //this.lblNombre.Text = info[0];
                //this.lblApellidos.Text = info[1];
                //this.lblEstatura.Text = info[2];
                //this.lblPeso.Text = info[7];
                //this.lblAlergias.Text = info[5];
                //this.lblGrupoSangre.Text = info[6];
                //this.lblTelefono.Text = info[3];
                //this.lblMail.Text = info[4];

                //AccesoWebService.acceso.se







            }

        }
    }
}