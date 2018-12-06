<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorInformes.aspx.cs" Inherits="SAFE.Pages.SupervisorInformes" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label" runat="server" Text="Empresa"></asp:Label>
        <asp:DropDownList ID="ddlEmpresas" runat="server">
        </asp:DropDownList>
    </p>
<p>
        <asp:Button ID="Button1" runat="server" Text="Cargar Informes Evaluaciones" CssClass="btn-success" OnClick="Button1_Click" />
    </p>
<p>
    <asp:GridView ID="gvGrillaInformes" runat="server" BackColor="White"   CellPadding="4" ForeColor="#1A393F" GridLines="Vertical" BorderColor="White" BorderStyle="None" BorderWidth="1px"  OnSelectedIndexChanged="gvGrillaInformes_SelectedIndexChanged" OnRowDataBound="gvGrillaInformes_RowDataBound">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Generar Informe" ShowSelectButton="True" />
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
    </p>
</asp:Content>
