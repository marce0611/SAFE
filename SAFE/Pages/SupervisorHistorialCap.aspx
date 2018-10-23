<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorHistorialCap.aspx.cs" Inherits="SAFE.Pages.SupervisorHistorialCap" %>
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
            width: 230px;
        }
    </style>
    
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">
                <h1 class="auto-style9">SAFE <small class="text-muted">Prevención de Riesgos</small> </h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 33px"></td>
            <td style="height: 33px;" colspan="2">
                <p class="h3">
                    Historial Capacitaciones</p>
            </td>
            <td style="height: 33px"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">
                <asp:GridView ID="gridHistorialCap" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="#1A393F" GridLines="Vertical">
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 385px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
