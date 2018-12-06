<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorEvaluaciones.aspx.cs" Inherits="SAFE.Pages.SupervisorEvaluaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <table style="width:100%; height: 489px;">
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
                <p class="h3"> Seleccionar Empresa:</p>
            </td>
            <td style="width: 385px; height: 33px;">
                <asp:DropDownList ID="ddlSeleccionarEmpresa" runat="server"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn-success" Text="Buscar Empresa" />
            </td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px"></td>
            <td style="width: 150px; height: 44px;">
                <p class="h3"> Evaluaciones</p>
            </td>
            <td style="width: 385px; height: 44px;"></td>
            <td style="height: 44px"></td>
            <td style="height: 44px"></td>
        </tr>
        <tr>
            <td style="height: 293px"></td>
            <td style="width: 150px; height: 293px;"></td>
            <td style="width: 385px; height: 293px;" class="modal-sm">
                <asp:GridView ID="gridEvaluaciones" runat="server" BackColor="White"   CellPadding="4" ForeColor="#1A393F" GridLines="Vertical" BorderColor="White" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gridEvaluaciones_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Ver Descripcion" ShowSelectButton="True" />
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
            <td style="height: 293px"></td>
            <td style="height: 293px"></td>
        </tr>
        </table>
        <fieldset id="fdsInfoEvaluacion" runat="server">
       <table>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 385px" class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">
                
              <label for="date" title="" aria-setsize="" __designer:mapid="72">Fecha Evaluación</label></td>
            <td style="width: 385px" class="modal-sm">
                <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 150px; height: 20px;" __designer:mapid="71">
                
              &nbsp;<label for="select" __designer:mapid="7a">Tipo de Evaluación</label></td>
            <td style="width: 385px; height: 20px;" class="modal-sm" __designer:mapid="73">
                
                <asp:Label ID="lblTipoEval" runat="server" Text=""></asp:Label>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 10px;"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px" designer:mapid="79">
                &nbsp;<label for="date" title="" aria-setsize="" __designer:mapid="82">Descripción Evaluación</label></td>
            <td style="width: 385px" class="modal-sm" designer:mapid="7b">
                
                <asp:TextBox ID="txtDescripcionPlan" rows="3" CssClass="auto-style1" runat="server" TextMode="MultiLine" Height="100px" Width="252px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7" __designer:mapid="81">
                &nbsp;</td>
            <td class="auto-style8" __designer:mapid="83" style="width: 385px">
                
                <asp:Button ID="Button2" runat="server" Text="Aceptar Evaluacion" Width="126px" OnClick="Button2_Click" CssClass="btn-success" OnClientClick="return validar();"/>
                <asp:Button ID="Button3" runat="server" style="margin-top: 0" Text="Rechazar" Width="134px" CssClass="btn-success" OnClick="Button3_Click" />
                <br />
            </td>
            <td>&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
        </tr>
        </table>
        </fieldset>
        <fieldset id="fdsRechazoEvaluacion" runat="server">
                    <table>
                <tr>
                   <td>&nbsp;</td>
                    <td style="width: 150px">
                        <asp:Label ID="Label1" runat="server" Text="Motivo"></asp:Label>
                    </td>
                    <td style="width: 385px" class="modal-sm">
                        <asp:TextBox ID="txtMotivo" runat="server" Height="120px" TextMode="MultiLine" Width="263px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMotivo" ErrorMessage="Campo Vacio" ValidationGroup="b">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Enviar Mensaje de Rechazo" Width="196px" CssClass="btn-success" OnClientClick="return validar();" ValidationGroup="b"/>
                        <asp:Button ID="Button5" runat="server" CssClass="btn-success" OnClick="Button5_Click" Text="Cancelar" />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="a" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </fieldset>
</asp:Content>
