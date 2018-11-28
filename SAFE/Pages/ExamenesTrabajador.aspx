<%@ Page Title="" Language="C#" MasterPageFile="~/MedicoMaster1.Master" AutoEventWireup="true" CodeBehind="ExamenesTrabajador.aspx.cs" Inherits="SAFE.Pages.ExamenesTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
    <asp:GridView ID="GridViewExamenes" runat="server"></asp:GridView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderFicha" runat="server">
    <div class="container;" >
        <div class="row center-block" >
            <div class="row container" style="padding-right: 15px; padding-top: 10px;">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
                <input type="date" id="fechaExamen">
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Tipo de Exámen"></asp:Label>
                <asp:DropDownList ID="ddlExamen" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
                <asp:TextBox ID="txtDescripcionExamen" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
            </div>
                <div>
                    <asp:Button ID="btnGuardarExam" CssClass="alert-info; text-center" runat="server" Text="Guardar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderHistorico" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
</asp:Content>
