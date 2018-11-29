using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class ExamenesTrabajador : System.Web.UI.Page
    {
        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            ddlExamen.DataSource = AccesoWebService.acceso.obtenerTipoExamen();
            ddlExamen.DataTextField = "TIPO_EXAMEN";
            ddlExamen.DataValueField = "ID";
            ddlExamen.DataBind();
            
        }

        protected void btnGuardarExam_Click(object sender, EventArgs e)
        {
            try
            {
                string f_examen = string.Format("{0}", Request.Form["fechaPlan"]);
                string[] partFecha = f_examen.Split('-');
                string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                if (AccesoWebService.acceso.crearExamen(txtDescripcionExamen.Text, fechaFormat, decimal.Parse(ddlExamen.SelectedValue), 1))
                {
                    mostrarAlerta("Examen agregado correctamente");
                }
            }
            catch (CommunicationException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch (TimeoutException ex)
            {
                mostrarAlerta(ex.Message);
            }
            catch (Exception ex)
            {
                mostrarAlerta(ex.Message);
            }
        }
    }
}