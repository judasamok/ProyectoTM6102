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
                        <asp:TextBox ID="txtComentario" TextMode="MultiLine" 
                            CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    </div>
                    <div class="text-center mt-4">
                        <asp:Button ID="btnEnviar" CssClass="btn btn-primary" 
                            runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
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
        

</asp:Content>
