<%@ Page Title="" Language="C#" MasterPageFile="~/MedicoMaster1.Master" AutoEventWireup="true" CodeBehind="AtencionTrabajador.aspx.cs" Inherits="SAFE.Pages.AtencionTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
    <asp:GridView ID="GridViewExamenes" runat="server"></asp:GridView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderFicha" runat="server">
    
                     <div class="form-group">
                         <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
                         <input type="date" id="fechaAtencion">
                      </div> 
                      <div class="form-control">
                          <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
                          <asp:TextBox ID="txtDescripcionAtencion" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
                          <asp:CheckBox ID="CheckBox1" runat="server" Text=" Ingresar Examen?"/>
                      </div>
              
            
  
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderHistorico" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
</asp:Content>
