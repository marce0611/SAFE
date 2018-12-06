<%@ Page Title="" Language="C#" MasterPageFile="~/MedicoMaster1.Master" AutoEventWireup="true" CodeBehind="ExamenesTrabajador.aspx.cs" Inherits="SAFE.Pages.ExamenesTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
    <asp:GridView ID="GridViewExamenes" runat="server" CssClass="center-block"></asp:GridView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderFicha" runat="server">
    <div class="container;" >
        <div class="row center-block" >
            <div class="row container" style="padding-right: 15px; padding-top: 10px;">
            <div class="form-group">
                <div>
                    <asp:Label ID="lblVisita" runat="server" Text="Visita"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlVisitaM" runat="server"></asp:DropDownList>
                </div>
                <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="date" id="fechaExamen" name="fechaExamen">
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Tipo de Exámen"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlExamen" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDescripcionExamen" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcionExamen" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
                <div>
                    <asp:Button ID="btnGuardarExam" CssClass="alert-info; text-center" runat="server" Text="Guardar" OnClick="btnGuardarExam_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderHistorico" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
</asp:Content>
