﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session[NombresSesiones.DatosUsuario] = null;
            Session[NombresSesiones.DatosTrabajador] = null;
            Response.Redirect("../Pages/Login.aspx");
        }
    }
}