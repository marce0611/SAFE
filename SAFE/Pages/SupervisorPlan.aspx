<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorPlan.aspx.cs" Inherits="SAFE.Pages.SupervisorPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 93px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            height: 90px;
        }
        .auto-style5 {
            width: 150px;
            height: 90px;
        }
        .auto-style6 {
            width: 385px;
            height: 90px;
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
        <tr>
            <td style="height: 33px"></td>
            <td style="width: 150px; height: 33px;">
                <p class="h3"> Plan</p>
            </td>
            <td style="width: 385px; height: 33px;"></td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <label for="date" title="" aria-setsize="">Descripción</label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDescripcionPlan" runat="server" Height="17px" Width="151px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDescripcionPlan" ErrorMessage="Campo de Texto" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcionPlan" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
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
                <input type="date" id="fechaPlan" name="fechaPlanificacion">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            
           
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="date" title="" aria-setsize="">Empresa</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:DropDownList ID="selectEmpresaPlan" CssClass="auto-style3"  runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
             <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                
                <asp:Button ID="btnGuardarPlan" CssClass="btn-success" runat="server" Text="Guardar" OnClick="btnGuardarPlan_Click" />
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
</asp:Content>
