<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="AppTiendaVirtual.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <section id="contact">
        <!-- Heading -->
        <h2 class="mb-5 pt-3 font-weight-bold text-center">Contáctenos</h2>
        
        <!--Grid row-->
        <div class="row justify-content-center">
                        
            <div class="col-lg-5 col-md-12">
                <div class="p-5 grey-text">
                    <div class="md-form form-sm">
                        <i class="fa fa-user prefix"></i>
                        <asp:Label ID="lblNombre" CssClass="ml-5" runat="server">Nombre:</asp:Label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    </div>
                    <div class="md-form form-sm">
                        <i class="fa fa-envelope prefix"></i>
                        <asp:Label ID="lblEmail" CssClass="ml-5" runat="server">Email:</asp:Label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    </div>
                    <div class="md-form form-sm">
                        <i class="fa fa-pencil prefix"></i>
                        <asp:Label ID="lblComentario" CssClass="ml-5" runat="server">Comentario:</asp:Label>
                        <asp:TextBox ID="txtComentario" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    </div>
                    <div class="text-center mt-4">
                        <asp:Button ID="btnEnviar" CssClass="btn btn-primary" 
                            runat="server" Text="Enviar" />
                    </div>
                </div>
            </div>
            <!--end grid column-->
                        
            <div class="col-lg-7 col-md-12">
                <div id="map" class="z-depth-1-half map-container mb-5"></div>                 
                <!--Grid row-->
                <div class="row text-center">
                    
                    <div class="col-lg-4 col-md-12 mb-3">
                        <p><i class="fa fa-map-marker fa-1x mr-2 grey-text"></i>Esparza, Puntarenas</p>
                    </div>
                    <!--end grid column-->

                    <div class="col-lg-4 col-md-6 mb-3">
                        <p><i class="fa fa-building fa-1x mr-2 grey-text"></i>Lun - Vier, 8:00-17:00</p>
                    </div>
                    <!--end grid column-->
                      
                    <div class="col-lg-4 col-md-6 mb-3">
                        <p><i class="fa fa-phone fa-1x mr-2 grey-text"></i>+ 506 2635 5678</p>
                    </div>
                    <!--end grid column-->
                </div><!--end grid row-->

            </div>
            <!--end Grid column-->
            
        </div>
        <!--end row-->

    </section>
    <!--end section-->

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
