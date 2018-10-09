<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="IngenieroEvaluación.aspx.cs" Inherits="SAFE.Pages.IngenieroEvaluación" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 86px;
            width: 240px;
        }
        .auto-style4 {
            width: 150px;
            height: 32px;
        }
        .auto-style5 {
            width: 385px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            height: 18px;
        }
        .auto-style8 {
            width: 150px;
            height: 18px;
        }
        .auto-style9 {
            width: 385px;
            height: 30px;
        }
        .auto-style10 {
            width: 385px;
            height: 18px;
        }
        .auto-style11 {
            height: 20px;
        }
        .auto-style12 {
            width: 150px;
            height: 20px;
        }
        .auto-style13 {
            width: 385px;
            height: 20px;
        }
        .auto-style14 {
            height: 71px;
        }
        .auto-style15 {
            width: 150px;
            height: 71px;
        }
        .auto-style16 {
            width: 385px;
            height: 71px;
        }
        .auto-style17 {
            height: 118px;
        }
        .auto-style18 {
            width: 150px;
            height: 118px;
        }
        .auto-style19 {
            width: 385px;
            height: 118px;
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
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16">
                <h1 class="auto-style9"> SAFE
                    <small class="text-muted">Prevención de Riesgos</small>
                </h1>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td style="height: 33px"></td>
            <td class="auto-style2" colspan="2">
                <p class="h3"> Informe? Evaluacion?</p>
            </td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
            </td>
            <td class="auto-style10">
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
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
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">
            </td>
            <td class="auto-style5">
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="lblIdEvaluación" title="" aria-setsize="">ID Evaluación</label>
              
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:Label ID="lblIdEvaluación" runat="server" Text="xxxxxxxxx" Enabled="false" ForeColor="Gray" Font-Bold="true"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <label for="lblFechaEvaluacion">Fecha</label>  
            </td>
            <td class="auto-style13">
                <asp:Label ID="lblFechaEvaluacion" runat="server" Text="dd-mm-aaaa" Enabled="false" ForeColor="Gray" Font-Bold="true"></asp:Label>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                <label for="lblTecnico">Tecnico</label>  
            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:Label ID="lblTecnico" runat="server" Text="xxxxxxxxx" Enabled="false" ForeColor="Gray" Font-Bold="true"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px"> 
                <label for="lblTipoEvaluación">Tipo Evaluación</label>  

            </td>
            <td style="width: 385px" class="modal-sm">
                <asp:Label ID="lblTipoEvaluación" runat="server" Text="xxxxxxxxx" Enabled="false" ForeColor="Gray" Font-Bold="true"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <label for="txtDescEvaluacion">Descripción Evaluación</label>  
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtDescEvaluacion" runat="server" Rows="10" Height="69px" Width="240px" Enabled="false" Text="xxxxxxxxx"  ForeColor="GrayText" Font-Bold="true"></asp:TextBox>
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>  
        <tr>
            <td style="height: 90px" class="auto-style2"></td>
            <td style="width: 150px; height: 72px;">
                <label for="date" title="" aria-setsize="">Recomendación</label>
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
    </table>

</asp:Content>
