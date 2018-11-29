<%@ Page Title="" Language="C#" MasterPageFile="~/MedicoMaster1.Master" AutoEventWireup="true" CodeBehind="AtencionTrabajador.aspx.cs" Inherits="SAFE.Pages.AtencionTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
    <asp:GridView ID="GridViewAtenciones" runat="server" CssClass="center-block"></asp:GridView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderFicha" runat="server">
    <div class="container" style="padding-left:50px" >
        
            <div class="row container" style="padding-right: 15px; padding-top: 10px;">
            <div class="form-group">
                <div>
                    <asp:Label ID="lblVisita" runat="server" Text="Visita Médica"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlVisitaMed" runat="server"></asp:DropDownList>
                </div>
                <asp:Label ID="Label1" runat="server" Text="Fecha Atención"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="date" id="fechaAtencion" name="fecha_Atencion">
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Descripción"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDescripcionAtencion" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
            </div>
                <div>
                    <asp:CheckBox ID="CheckBoxExamen" runat="server" Text="Desea ingresar exámen?" OnCheckedChanged="CheckBoxExamen_CheckedChanged" AutoPostBack="True" />
                </div>
                <div>
                    <asp:Button ID="btnGuardarAtencion" CssClass="alert-info; center-block" runat="server" Text="Guardar" OnClick="btnGuardarAtencion_Click" />
                </div>
                </div>
        </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderHistorico" runat="server">
    <fieldset id="fdsExamen" runat="server">
      <div class="container" style="padding-left: 50px">
        
            <div class="row container" style="padding-right: 15px; padding-top: 50px;">
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="date" id="fechaExamen">
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Tipo de Exámen"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlExamen" CssClass="top-left" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Descripción"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDescripcionExamen" Rows="5" runat="server" Height="100" Width="190" ></asp:TextBox>
            </div>
                <div>
                    <asp:Button ID="btnGuardarAtencionyExam" CssClass="alert-info; center-block" runat="server" Text="Guardar" />
                </div>
                
           
        </div>
    </div>
        </fieldset>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
</asp:Content>
