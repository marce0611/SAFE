<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="TecnicoEvaluacion.aspx.cs" Inherits="SAFE.Pages.TecnicoEvaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <tr>
            <td style="height: 33px"></td>
            <td style="width: 150px; height: 33px;">
                <p class="h3"> Evaluación</p>
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
                <input type="date" id="fechaEvaluacion">
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
                <select id="selectTipoEvaluacion" class="auto-style3" name="D1">
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
            <td style="height: 90px" class="auto-style2"></td>
            <td style="width: 150px; height: 72px;">
                <label for="date" title="" aria-setsize="">Descripción Evaluación</label>
            </td>
            <td style="width: 385px; height: 72px;">
                <textarea id="txtDescripcionPlan" rows="3" class="auto-style3" ></textarea>
            </td>
            <td style="height: 90px" class="auto-style2"></td>
            <td style="height: 90px" class="auto-style2"></td>
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
                <button type="submit" class="btn btn-success">Guardar</button>
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
          <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" BackColor="White"   CellPadding="4" ForeColor="#1A393F" GridLines="Vertical" BorderColor="White" BorderStyle="None" BorderWidth="1px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#1A393F" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
              </td>
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
