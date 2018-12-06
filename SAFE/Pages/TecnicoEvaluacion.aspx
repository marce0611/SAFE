<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="TecnicoEvaluacion.aspx.cs" Inherits="SAFE.Pages.TecnicoEvaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            height: 90px;
        }
        .auto-style3 {
            width: 150px;
            height: 90px;
        }
        .auto-style4 {
            width: 385px;
            height: 90px;
        }
        table{
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

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
        <table style="width:100%;">
        <tr>
           <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <fieldset id="fdsIngresarEvaluacion" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 33px"></td>
            <td style="width: 150px; height: 33px;">
                <p class="h3"> Anotación</p>
            </td>
            <td style="width: 385px; height: 33px;"></td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="date" title="" aria-setsize="">Fecha Evaluación</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <input type="date" id="fechaEvaluacion" name="Fecha_Evaluacion">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                <label for="select">Tipo de Evaluación</label>  
            </td>
            <td style="width: 385px" class="modal-sm">
                
                <asp:DropDownList ID="selectTipoEvaluacion" CssClass="auto-style1" runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <label for="date" title="" aria-setsize="">Descripción Evaluación</label>
            </td>
            <td class="auto-style4">
                
                <asp:TextBox ID="txtDescripcionPlan" rows="3" CssClass="auto-style1" runat="server" TextMode="MultiLine" Height="100px" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Vacio" ControlToValidate="txtDescripcionPlan">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
         <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <label for="date" title="" aria-setsize="">Empresa</label>
            </td>
             <td class="auto-style4">
                
                 <asp:DropDownList ID="selectEmpresa" CssClass="auto-style1" runat="server"></asp:DropDownList>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
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
                <asp:Button ID="btnGuardarTecEva" CssClass="btn-success" runat="server" Text="Guardar" OnClick="btnGuardarTecEva_Click" OnClientClick="return validar();" />
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
        </fieldset>
</asp:Content>
