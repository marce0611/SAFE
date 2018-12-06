<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAFE.Login" %>
<%@ MasterType VirtualPath="~/MasterLogin.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 72px
        }
        .auto-style7 {
            height: 110px;
        }
        .auto-style8 {
            width: 72px;
            height: 110px;
        }
        .auto-style9 {
            width: 322px;
        }
    .auto-style10 {
        display: block;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    }
    </style>
</asp:Content>
<asp:Content ID="ContentPlaceHolder3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    
    <table style="width: 100%;">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"> 
                &nbsp;&nbsp;
                <h1 class="auto-style9"> SAFE
                    <small class="text-muted">Prevención de Riesgos</small>
                </h1>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                
                  <div class="form-group">
                    <label class="control-label" for="username">Usuario</label>
                      <asp:TextBox ID="txtUsuario" MaxLength="10" CssClass="form-control" runat="server" ValidationGroup="Validar"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" Display="Dynamic" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Campo Numerico" ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>
                  </div>
               
                  <div class="form-group">
                      <label for="exampleInputPassword1">Contraseña</label>
                    <asp:TextBox ID="txtPass" CssClass="form-control" type="password" runat="server" ValidationGroup="Validar"></asp:TextBox>                
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Campo Vacio">*</asp:RequiredFieldValidator>
                  </div>
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="185px" />
                <br />
                <div>
                   <asp:Button ID="btnAcceder" CssClass="auto-style10" BackColor="#BDD01C" ForeColor="Black" runat="server" Text="Acceder" OnClick="btnAcceder_Click" Width="84px" />
                </div>
                

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">

              
            </td>
            <td class="auto-style7"></td>
        </tr>
    </table>
    
</asp:Content>
