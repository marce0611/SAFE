<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.master" AutoEventWireup="true" CodeBehind="SupervisorInformes.aspx.cs" Inherits="SAFE.Pages.SupervisorInformes" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Button ID="Button1" runat="server" Text="Cargar Informes Evaluaciones" />
    </p>
<p>
        &nbsp;</p>
<p>
    </p>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
</asp:Content>
