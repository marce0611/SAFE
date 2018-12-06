using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAFE.Pages
{
    public partial class AtencionTrabajador : System.Web.UI.Page
    {
        public void mostrarAlerta(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this.Page, typeof(string), "Alert", string.Format("alert('{0}');", mensaje), true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                DataSet info = (DataSet)Session[NombresSesiones.DatosUsuario];
                ddlVisitaMed.DataSource = AccesoWebService.acceso.obtenerVisitaPorId(decimal.Parse(info.Tables[0].Rows[0]["id"].ToString()));
                ddlVisitaMed.DataTextField = "Fecha Visita";
                ddlVisitaMed.DataValueField = "id";
                ddlVisitaMed.DataBind();

                ddlExamen.DataSource = AccesoWebService.acceso.obtenerTipoExamen();
                ddlExamen.DataTextField = "TIPO_EXAMEN";
                ddlExamen.DataValueField = "ID";
                ddlExamen.DataBind();

                fdsExamen.Visible = false;

            }

        }

        protected void btnGuardarAtencion_Click(object sender, EventArgs e)
        {
            try
            {
                

                string fechaAtencion = string.Format("{0}", Request.Form["fecha_Atencion"]);
                if (!fechaAtencion.Equals(""))
                {
                    DataSet info = (DataSet)Session[NombresSesiones.DatosUsuario];
                    string[] infoTrabajador = (string[])Session[NombresSesiones.DatosTrabajador];
                    string[] partFecha = fechaAtencion.Split('-');
                    string fechaFormat = string.Format("{0}-{1}-{2}", partFecha[2], partFecha[1], partFecha[0]);
                    if (AccesoWebService.acceso.crearAtencion(txtDescripcionAtencion.Text, infoTrabajador[1], decimal.Parse(ddlVisitaMed.SelectedValue), fechaFormat))
                    {
                        mostrarAlerta("Atención agregada correctamente");
                    }
                }
                else
                {
                    mostrarAlerta("Ingrese una fecha en el campo respectivo");
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

        protected void CheckBoxExamen_CheckedChanged(object sender, EventArgs e)
        {
            if (fdsExamen.Visible == false)
            {
                fdsExamen.Visible = true;
            }
            else
            {
                fdsExamen.Visible = false;
            }
            
        }
    }
}