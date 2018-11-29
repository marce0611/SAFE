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
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
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
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">
                
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">&nbsp;</td>
            <td style="width: 193px">&nbsp;</td>
            <td style="width: 333px">
                
                <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardarCap_Click" />
                    
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

