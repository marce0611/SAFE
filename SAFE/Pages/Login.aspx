<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAFE.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    
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
                      <asp:TextBox ID="txtUsuario" MaxLength="10" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
               
                  <div class="form-group">
                      <label for="exampleInputPassword1">Contraseña</label>
                    <asp:TextBox ID="txtPass" CssClass="form-control" type="password" runat="server"></asp:TextBox>                
                  </div>
                <br />
                <div>
                   <asp:Button ID="btnAcceder" CssClass="form-control" BackColor="#BDD01C" ForeColor="Black" runat="server" Text="Acceder" OnClick="btnAcceder_Click" />
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
