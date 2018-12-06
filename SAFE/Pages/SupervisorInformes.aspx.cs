using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace SAFE.Pages
{
    public partial class SupervisorInformes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlEmpresas.DataSource = AccesoWebService.acceso.retornarEmpresas();
                ddlEmpresas.DataTextField = "NOMBRE_EMPRESA";
                ddlEmpresas.DataValueField = "ID";
                ddlEmpresas.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gvGrillaInformes.DataSource = AccesoWebService.acceso.retornarInformes(decimal.Parse(ddlEmpresas.SelectedValue));
            gvGrillaInformes.DataBind();
        }

        protected void gvGrillaInformes_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (ReportDocument rd = new ReportDocument())
            {
                GridViewRow fila = gvGrillaInformes.SelectedRow;
                List<InformeFinal> listaInforme = new List<InformeFinal>();
                InformeFinal infoInforme = new InformeFinal();
                infoInforme.idInforme = fila.Cells[1].Text;
                infoInforme.descripcionEvaluacion = fila.Cells[2].Text;
                infoInforme.recomendaciones = fila.Cells[3].Text;
                infoInforme.tipoEvaluacion = fila.Cells[4].Text;
                infoInforme.fechaEvaluacion = fila.Cells[5].Text;
                infoInforme.nombreTecnico = fila.Cells[6].Text;
                infoInforme.nombreIngeniero = fila.Cells[7].Text;
                listaInforme.Add(infoInforme);
                rd.Load(Server.MapPath("~/DocumentoInforme.rpt"));
                rd.Database.Tables["SAFE_InformeFinal"].SetDataSource(listaInforme);
                rd.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Crystal");
                Response.End();
            }
            

        }

        protected void gvGrillaInformes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[2].Visible = false;
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[10].Visible = false;
                e.Row.Cells[9].Visible = false;
                e.Row.Cells[8].Visible = false;
            }
        }
    }
}