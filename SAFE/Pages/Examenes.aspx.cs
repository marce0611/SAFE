﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class Examenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ServiceReference2.ServicioPaginaWebClient c = new ServiceReference2.ServicioPaginaWebClient();
            //GridViewExamenes.DataSource = c.obtenerExamanes();
        }
    }
}