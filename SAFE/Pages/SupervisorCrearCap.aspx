<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorCrearCap.aspx.cs" Inherits="SAFE.Pages.SupervisorCrearCap" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                <textarea id="txtDescripcionCap" rows="3" class="auto-style12" ></textarea>
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
                  <input type="text" id="txtExpositor" placeholder=" " class="auto-style12">
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
                <input type="date" id="fechaComienzo" class="auto-style14">
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
                <input type="date" id="fechaTermino" class="auto-style14">
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
                <select id="selectPlanCap" class="auto-style12">
                    <option value="">Choose...</option>
                    <optgroup label="Option group 1">
                      <option value="">Option 1</option>
                      <option value="">Option 2</option>
                      <option value="">Option 3</option>
                    </optgroup>
                  </select>
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
                <input type="text" id="txtMinParticipantes" placeholder=" " class="auto-style12">
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
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
                <button type="submit" class="btn btn-success">Guardar</button>
            </td>
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
