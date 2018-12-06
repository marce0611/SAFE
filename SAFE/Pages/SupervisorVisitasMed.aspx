<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorVisitasMed.aspx.cs" Inherits="SAFE.Pages.SupervisorVisitasMed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 93px;
        }
        .auto-style2 {
            height: 63px;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 150px;
            height: 27px;
        }
        .auto-style6 {
            width: 385px;
            height: 27px;
        }
        .auto-style7 {
            height: 33px;
        }
    </style>
        <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                <h1 class="auto-style9"> SAFE
                    <small class="text-muted">Prevención de Riesgos</small>
                </h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
        <div id="Contenido" style="padding-top: 40px; margin-left: 20%;">
        <table style="width:100%;">
        <tr>
            <td style="height: 33px"></td>
            <td class="auto-style7" colspan="2">
                <p class="h3"> Ingresar Visita Médica</p>
            </td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style6">
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="date" title="" aria-setsize="">Fecha </label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <input type="date" id="fechaPlan" name="Fecha_Plan">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                <label for="select">Medico</label>  
            </td>
            <td style="width: 385px" class="modal-sm">
                
                <asp:DropDownList ID="selectMedicoVM" CssClass="auto-style3"  runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="date" title="" aria-setsize="">Empresa</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:DropDownList ID="selectEmpresaVM" CssClass="auto-style3"  runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
             <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                <asp:Button ID="btnGuardarVisitaM" CssClass="btn-success" runat="server" Text="Guardar" OnClick="btnGuardarVisitaM_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
        

</asp:Content>
