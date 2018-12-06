<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorCrearCap.aspx.cs" Inherits="SAFE.Pages.SupervisorCrearCap" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <style type="text/css">
        .auto-style1 {
            height: 93px;
        }
        .auto-style2 {
            height: 63px;
        }
    .auto-style3 {
        width: 213px;
    }
    .auto-style4 {
        height: 33px;
        width: 213px;
    }
    .auto-style5 {
        height: 73px;
        width: 213px;
    }
    .auto-style6 {
        height: 39px;
    }
    .auto-style7 {
        height: 39px;
        width: 213px;
    }
    .auto-style8 {
        width: 385px;
        height: 39px;
    }
    .auto-style9 {
        height: 87px;
    }
    .auto-style10 {
        width: 385px;
        height: 73px;
    }
    .auto-style11 {
        height: 73px;
    }
    .auto-style12 {
        width: 230px;
    }
    .auto-style14 {
        width: 120px;
    }
        .auto-style15 {
            height: 38px;
        }
        .auto-style16 {
            width: 213px;
            height: 38px;
        }
        .auto-style17 {
            width: 385px;
            height: 38px;
        }
    </style>

    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
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
            <td class="auto-style4">
                <p class="h3"> Crear Capacitación</p>
            </td>
            <td style="width: 385px; height: 33px;"></td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style5">
                <label for="date" title="" aria-setsize="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción</label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtDescripcionCap" rows="3" class="auto-style12" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcionCap" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <label for="date" title="" aria-setsize="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Expositor</label>                
            </td>
            <td class="auto-style8">
                  
                  <asp:TextBox ID="txtExpositor" runat="server" class="auto-style12"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExpositor" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtExpositor" ErrorMessage="Campo de Texto" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                
              <label for="date" title="" aria-setsize="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha Comienzo</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <input type="date" id="txtfechaComienzo" class="auto-style14" name="fechaInicio">
             
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                
              <label for="date" title="" aria-setsize="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha Termino</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <input type="date" id="txtfechaTermino" class="auto-style14" name="fechaTermino">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">                
                <label for="select">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Plan de Capacitación</label>          
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:DropDownList ID="ddlPlanCap" runat="server" class="auto-style12"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <label for="select">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minimo de Participantes</label>  
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:TextBox ID="txtMinParticipantes" runat="server" class="auto-style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMinParticipantes" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMinParticipantes" ErrorMessage="Campo Numerico" ValidationExpression="([0-9]|)*">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                
                <asp:Button ID="btnGuardarCap" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardarCap_Click" OnClientClick="return validar();" />
                    
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
