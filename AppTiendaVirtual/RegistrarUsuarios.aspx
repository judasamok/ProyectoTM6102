<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuarios.aspx.cs" Inherits="AppTiendaVirtual.RegistrarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="container form-group d-flex justify-content-center mt-5 mb-5">
               
        <div class="card  mt-5 pt-3 col-lg-6 col-md-6 text-center">

            <!--Header-->
            <div class="form-header danger-color  mb-1  d-flex justify-content-center">
                <h3><i class="fa fa-user-plus mt-2 mb-2"></i> Registrarse</h3>
            </div>
           
            <div class="card-body mt-3">
                <!--Body--> 
                <div class="inline-ul text-center d-flex justify-content-center mb-5">
                        <asp:Label runat="server" Text="Comienza tu viaje musical descuentos del 30% para nuevos usuarios durante un mes" CssClass="mx-2 grey-text"></asp:Label>
                 </div>

                <div class="md-form">

                    <i class="fa fa-user prefix text-danger "></i>
                    <asp:TextBox ID="txtNombreCompleto" runat="server" placeholder="Nombre Completo"></asp:TextBox>
                </div>

                <div class="md-form">

                    <i class="fa fa-envelope prefix text-danger "></i>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Insertar email"></asp:TextBox>
                </div>

                <div class="md-form">
                    <i class="fa fa-lock prefix text-danger"></i>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Insertar password"></asp:TextBox>
                </div>

                <div class="text-center pt-5">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrarse" class="btn success-color" OnClick="btnRegistrar_Click"/>
                </div>
               
                <hr>
                    <div class="inline-ul text-center d-flex justify-content-center">
                        <asp:Label runat="server" Text="¿Ya tienes cuenta?" CssClass="mx-2"></asp:Label>
                        <a href="Login.aspx" class="text-uppercase mx-2">Login </a>
                    </div>
            </div>

        </div>
    </div><!--end container-->


</asp:Content>
