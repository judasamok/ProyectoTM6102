<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuienesSomos.aspx.cs" Inherits="AppTiendaVirtual.QuienesSomos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

		<!-- Card -->
		<div class="row">
            <div class="card card-image backgroundParallax">
                <!-- Content -->
                <div class=" TextoContenido text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                    <div>
                        <h5 class="pink-text"><i class="fa fa-pie-desktop "></i> QUIENES SOMOS</h5>
                        <h3 class="card-title pt-2 "><strong>HEARTSONG</strong></h3>
                        <p>Somos tu catalogo de ventas de albumes musicales en linea,
							Visita ahora nuestra tienda y date cuenta de las grandes ofertas que tenemos para ti y toda tu familia.
							Registrate Ahora!.</p>
						<a class="btn btn-danger "><i class="fa fa-clone left"></i> Regístrate</a>
				    </div>
		        </div>
			</div>
            <!-- Content -->
        </div>
        <!--end Card -->

	    <!-- Grid row -->
        <div class="row mt-1">
            <!-- Grid column -->
            <div class="column-2 px-2 mb-r">
                <!--Card-->
                <div class="card default-color-dark">
                    <!--Card image-->
                    <div class="view img-contenedor">
                        <img src="css/img/hombre1.jpg" class="card-img-top rounded-circle" alt="photo">
                        <a href="#">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    
                    <!--Card content-->
                    <div class="card-body text-center">
                        <!--Title-->
                        <h4 class="card-title white-text">Roybell Guerrero</h4>
                        <!--end Text-->
                        <p class="card-text white-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
                            aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                            Nemo enim ipsam voluptatem quia voluptas.</p>
		                <a href="#" class="btn btn-outline-warning btn-md">Button</a>
			            <div>
		                    <i class="fa fa-facebook-official"></i>
		                    <i class="fa fa-twitter "></i>
		                    <i class="fa fa-mail-forward "></i>
			            </div>
                    </div>

                </div>
                <!--end Card-->

            </div>
            <!--end Grid column -->

            <!-- Grid column -->
            <div class="column-1 px-2 mb-r">
                <!--Card-->
                <div class="card primary-color-dark">
                    <!--Card image-->
                    <div class="view img-contenedor">
                        <img src="css/img/hombre2.jpg" class="card-img-top rounded-circle" alt="photo">
                        <a href="#">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>

                    <!--Card content-->
                    <div class="card-body text-center">
                        <!--Title-->
                        <h4 class="card-title white-text">Andres Solano</h4><!--end Text-->
                        <p class="card-text white-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
                            aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                            Nemo enim ipsam voluptatem quia voluptas.</p>
                        <a href="#" class="btn btn-outline-info btn-md">Button</a>
		            
                        <div>
    		                <i class="fa fa-facebook-official"></i>
		                    <i class="fa fa-twitter "></i>
		                    <i class="fa fa-mail-forward "></i>
			            </div>
                    </div>

                </div>
                <!--end Card-->

            </div>
            <!--end Grid column -->

            <!-- Grid column -->
            <div class="column-1 px-2">
                <!--Card-->
                <div class="card warning-color-dark">
                    <!--Card image-->
                    <div class="view img-contenedor">
                        <img src="css/img/hombre3.jpg" class="card-img-top rounded-circle " alt="photo">
                        <a href="#">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>

                    <!--Card content-->
                    <div class="card-body text-center">
                        <!--Title-->
                        <h4 class="card-title white-text">Juan Pablo Lopez</h4>
                        <!--Text-->
                        <p class="card-text white-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
                            aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                            Nemo enim ipsam voluptatem quia voluptas.</p>
                        <a href="#" class="btn btn-outline-warning btn-md">Button</a>
                        <div>
                            <i class="fa fa-facebook-official"></i>
                            <i class="fa fa-twitter "></i>
                            <i class="fa fa-mail-forward "></i>
                        </div>
                    </div>

                </div>
                <!--end Card-->

            </div>
            <!--end Grid column -->

        </div>
        <!-- Grid row -->
    </div>

    

</asp:Content>
