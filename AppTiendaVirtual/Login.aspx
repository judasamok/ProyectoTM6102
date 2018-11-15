<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppTiendaVirtual.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container form-group d-flex justify-content-center mt-5 mb-5 ImgLogin">
        
        <div class="card  mt-5 pt-3 col-lg-6 col-md-6 text-center">

            <!--Header-->
            <div class="form-header primary-color  mb-1  d-flex justify-content-center">
                <h3><i class="fa fa-user mt-2 mb-2"></i> Iniciar Sesión</h3>
            </div>
            
            <div class="card-body mt-3">
                <!--Body--> 
                <div class="inline-ul text-center d-flex justify-content-center mb-5">
                        <asp:Label runat="server" Text="No olvides aprovechar los descuentos y promociones para miembros" CssClass="mx-2 grey-text"></asp:Label>
                 </div>

                <div class="md-form">

                    <i class="fa fa-envelope prefix text-primary "></i>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Insertar email"></asp:TextBox>
                </div>

                <div class="md-form">
                    <i class="fa fa-lock prefix text-primary"></i>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Insertar password"></asp:TextBox>
                </div>

                <div class="text-center pt-5">
                    
                    <asp:Button class="btn success-color" ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click"/>
                </div>
                
                <div class="inline-ul text-center d-flex justify-content-center mt-3">
                        
                    <asp:Label runat="server" Text="¿Olvidaste tu"></asp:Label>
                    <a href="#" class=" mx-1"> password? </a>
         
                </div>

                <hr>
                    <div class="inline-ul text-center d-flex justify-content-center">
                        <asp:Label runat="server" Text="¿No tienes cuenta?" CssClass="mx-2"></asp:Label>
                        <a href="RegistrarUsuarios.aspx" class="text-uppercase mx-2">Registrate Aqui </a>
                    </div>
            </div>

        </div>
    </div><!--end container-->

    <!-- Footer -->
    <footer class="page-footer font-small special-color-dark pt-4">
        <!-- Footer Elements -->
        <div class="container">
            <!-- Social buttons -->
            <ul class="list-unstyled list-inline text-center">
                <li class="list-inline-item">
                    <a class="btn-floating btn-fb mx-1">
                        <i class="fa fa-facebook"> </i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-tw mx-1">
                        <i class="fa fa-twitter"> </i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-gplus mx-1">
                        <i class="fa fa-google-plus"> </i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-li mx-1">
                        <i class="fa fa-linkedin"> </i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="btn-floating btn-dribbble mx-1">
                        <i class="fa fa-dribbble"> </i>
                    </a>
                </li>
            </ul>
            <!--end Social buttons -->

        </div>
        <!-- end Footer Elements -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2018 Copyright:
        </div>
        <!--end Copyright -->

    </footer>
    <!-- end Footer -->

</asp:Content>
