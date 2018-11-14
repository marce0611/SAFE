<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SAFE.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 470px
        }
        .auto-style7 {
            height: 110px;
        }
        .auto-style8 {
            width: 470px;
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
                
                  <div>
                    <label class="col-lg-6" for="exampleInputEmail1">Usuario</label>
                  </div>
                <br />
                <div>
                    <asp:TextBox ID="txtUsuario" CssClass="center-block" runat="server"></asp:TextBox>
                    
                  </div>
                  <div>
                    <label for="exampleInputPassword1">Contraseña</label>
                  </div>
                <br />
                  <div>
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>                
                  </div>
                <br />
                <div>
                   <asp:Button ID="btnAcceder"  CssClass="center-block" BackColor="#BDD01C" ForeColor="Black" runat="server" Text="Acceder" OnClick="btnAcceder_Click" />
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
