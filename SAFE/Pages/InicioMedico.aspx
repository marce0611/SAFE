<%@ Page Title="" Language="C#" MasterPageFile="~/Medico.master" AutoEventWireup="true" CodeBehind="InicioMedico.aspx.cs" Inherits="SAFE.Pages.InicioMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div>
            <asp:Label ID="lblRutTrab" runat="server" Text="Rut trabajador"></asp:Label>
            <asp:TextBox ID="txtRut" runat="server" Width="147px"></asp:TextBox> 
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn-success" Width="68px" />
        </div>
    </div>
    <br />
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div>
        <asp:GridView ID="GridViewTrabajadores" CssClass="center-block" runat="server"></asp:GridView>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    
</asp:Content>
