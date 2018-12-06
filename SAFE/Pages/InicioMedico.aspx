<%@ Page Title="" Language="C#" MasterPageFile="~/Medico.master" AutoEventWireup="true" CodeBehind="InicioMedico.aspx.cs" Inherits="SAFE.Pages.InicioMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div>
            <asp:Label ID="lblRutTrab" runat="server" Text="Rut trabajador"></asp:Label>
            <asp:TextBox ID="txtRut" runat="server" Width="147px" ToolTip="Ej: 11111111-1"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="Campo Numerico" ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn-success" Width="68px" OnClick="btnBuscar_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ej: XXXXXXXX-X"></asp:Label>
        </div>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div>
        <asp:GridView ID="GridViewTrabajadores" CssClass="center-block" runat="server" OnSelectedIndexChanged="GridViewTrabajadores_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    
</asp:Content>
