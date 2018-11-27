<%@ Page Title="" Language="C#" MasterPageFile="~/MedicoMaster1.Master" AutoEventWireup="true" CodeBehind="AtencionTrabajador.aspx.cs" Inherits="SAFE.Pages.AtencionTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
        <div style="float:left"> 
        <div class="container;" style="align-content:center; float:left; top:auto;" aria-orientation="vertical" >
                <div class="row center-block" id="divPrueba" style="align-content:center; float:left">
                      <div class="row container" style=" padding-top: 10px;">
                         <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
                         <asp:Label ID="lblFechaAtencion" runat="server" Text=""></asp:Label>
                         <br />
                          <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
                          <asp:TextBox ID="txtDescripcionAtencion" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
                          <br />
                          <asp:CheckBox ID="CheckBox1" runat="server" Text=" Ingresar Examen?"/>
                      </div>
                </div>
            </div>
  

    </div>
  
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderFicha" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderHistorico" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
</asp:Content>
