<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorInformes.aspx.cs" Inherits="SAFE.Pages.SupervisorInformes" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label" runat="server" Text="Empresa"></asp:Label>
        <asp:DropDownList ID="ddlEmpresas" runat="server">
        </asp:DropDownList>
    </p>
<p>
        <asp:Button ID="Button1" runat="server" Text="Cargar Informes Evaluaciones" OnClick="Button1_Click" />
    </p>
<p>
    <asp:GridView ID="gvGrillaInformes" runat="server" OnSelectedIndexChanged="gvGrillaInformes_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Generar Informe" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    </p>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
</asp:Content>
