<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="~/Pages/TecnicoVerEvaluaciones.aspx.cs" Inherits="SAFE.Pages.TecnicoVerEvaluaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style2 {
            width: 349px;
        }
        .auto-style3 {
            width: 100%;
            height: 67px;
        }
        .auto-style4 {
            width: 138px
        }
        .newStyle1 {
            font-size: large;
        }
        .auto-style6 {
            width: 349px;
            height: 64px;
        }
        .auto-style7 {
            width: 100%;
            height: 64px;
        }
        .auto-style8 {
            width: 138px;
            height: 64px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
            <td colspan="3">
                <asp:GridView ID="grvEvaluacionesTec" runat="server" BackColor="White"   CellPadding="4" ForeColor="#1A393F" GridLines="Vertical" BorderColor="White" BorderStyle="None" BorderWidth="1px" EmptyDataText="No se encontraron registros" OnSelectedIndexChanged="grvEvaluacionesTec_SelectedIndexChanged" OnRowDataBound="grvEvaluacionesTec_RowDataBound">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ItemStyle-Width="200px" ItemStyle-Wrap="true" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-info" SelectText="Ver detalle">
                                        <ItemStyle Wrap="True" Width="100px"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
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
    <fieldset id="fdsVerEvaluacion" runat="server">
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
                <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
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
                
                <asp:Label ID="lblTipoEval" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <label for="date" title="" aria-setsize="">Descripción Evaluación</label>
            </td>
            <td class="auto-style8">
                
                <asp:TextBox ID="txtDescripcionPlan" rows="3" CssClass="auto-style1" runat="server" TextMode="MultiLine" Height="100px" Width="252px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <label for="date" title="" aria-setsize="">Nota Supervisor</label>
            </td>
            <td class="auto-style8">
                
                <asp:TextBox ID="txtNotaSupervisor" rows="3" CssClass="auto-style1" runat="server" TextMode="MultiLine" Height="100px" Width="252px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <label for="date" title="" aria-setsize="">Empresa</label>
            </td>
             <td class="auto-style4">
                
                 <asp:Label ID="lblEmpresa" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
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
                <asp:Button ID="btnReenviarTecEva" CssClass="btn-success" runat="server" Text="Enviar nuevo formulario" OnClick="btnGuardarTecEva_Click" />
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
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="grvEvaluacionesTec" />
        </Triggers>
    </asp:UpdatePanel>     
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <img src="../Imgs/logo safe.png" />
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>