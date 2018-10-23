<%@ Page Title="" Language="C#" MasterPageFile="~/Medico.Master" AutoEventWireup="true" CodeBehind="Examenes.aspx.cs" Inherits="SAFE.Pages.Examenes" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 10px; font-size: small">
        <div class="row">
            <div class="col-md-3 card card-primary modal-content p-0" style="border-radius: 5px; box-shadow: none">
                <!-- COLUMNA LATERAL CON INFORMACION DEL TRABAJADOR -->
                <div class="container-fluid card-header pb-0 pt-2">
                    <h6 style="text-align: center">Información Personal del Trabajador</h6>
                </div>
                <div class="card-body" style="">
                    <div>
                        <img src="~/Imgs/avatar.png" height="150" runat="server" style="padding-left: 50px; margin: 10px; position: center;" />
                    </div>
                    
                     <div class="container d-flex justify-content-start" style="padding-left: 0; padding-right: 0px">
                        <div id="InformacionTrabajador" style="float: left; align-content: center; margin-top: 20px; justify-content: flex-start">
                            
                            <asp:Label runat="server" Font-Bold="true">Rut:</asp:Label>
                            <asp:Label runat="server" ID="lblRut"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Nombre:</asp:Label>
                            <asp:Label runat="server" ID="lblNombres"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Apellidos:</asp:Label>
                            <asp:Label runat="server" ID="lblApellidos"></asp:Label>
                            <br />
                            
                            <h5 style="text-align: center; color:darkcyan; font-style:italic">Información Médica</h5>
                            <asp:Label runat="server" Font-Bold="true">Estatura:</asp:Label>
                            <asp:Label runat="server" ID="lblEstatura"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Peso:</asp:Label>
                            <asp:Label runat="server" ID="lblPeso"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Alergias:</asp:Label>
                            <asp:Label runat="server" ID="lblAlergias"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Grupo Sanguíneo:</asp:Label>
                            <asp:Label runat="server" ID="lblGrupoSang"></asp:Label>
                            <br />
                            <h5 style="text-align: center; color:darkcyan; font-style:italic">Contacto</h5>
                            <asp:Label runat="server" Font-Bold="true">Teléfono:</asp:Label>
                            <asp:Label runat="server" ID="lblTelefono"></asp:Label>
                            <br />
                            <asp:Label runat="server" Font-Bold="true">Mail:</asp:Label>
                            <asp:Label runat="server" ID="lblMail"></asp:Label>
                            <br />
                            <br />
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-sm-9">
                <div class="row">
                            </div>
    </div>
        </div>
    </div>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container;" >
        <div class="row center-block" >
            <div class="row container" style="padding-right: 30px; padding-top: 10px;">
            <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
                <asp:Label ID="lblFechaAtencion" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
