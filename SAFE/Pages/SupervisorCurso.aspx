<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorCurso.aspx.cs" Inherits="SAFE.Pages.SupervisorCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px"><h1 class="auto-style9"> SAFE
                    <small class="text-muted">Prevención de Riesgos</small>
                </h1>

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">
                <p class="h3">
                    Ingresar Curso</p>
            </td>
            <td style="width: 333px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">
                <label aria-setsize="" for="date" title="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción</label>

            </td>
            <td style="width: 333px">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Campo de Texto" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">
                <label aria-setsize="" for="date" title="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Capacitación</label>
            </td>
            <td style="width: 333px">
                <asp:DropDownList ID="ddlCapacitacion" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">
                
                <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardarCurso_Click" OnClientClick="return validar();"/>
                    
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

