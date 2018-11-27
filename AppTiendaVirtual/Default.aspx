<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppTiendaVirtual.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contenido-pagina">
        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner margen-slider">
                <div class="carousel-item active">
                    <img src="css/img/marshall.jpg" class="sliderImages">
                    <h1 class="tipografia-titulos-slider" >Bienvenidos</h1>

                    <a class=" botonSlider" href="#"><i class="fa fa-plus"></i> Regístrate</a>
                    <a class=" botonSlider2" href="#"><i class="fa fa-check"></i> Iniciar Sesión</a>
                </div>

                <div class="carousel-item">
                    <img src="css/img/micro.jpg" class="sliderImages">
                    <h1 class="tipografia-titulos-slider" >Bienvenidos</h1>

                    <a class=" botonSlider" href="#"><i class="fa fa-plus"></i> Regístrate</a>
                    <a class=" botonSlider2" href="#"><i class="fa fa-check"></i> Iniciar Sesión</a>
                </div>

                <div class="carousel-item">
                    <img src="css/img/guitar.jpg" class="sliderImages">
                    <h1 class="tipografia-titulos-slider " >Bienvenidos</h1>

                    <a class=" botonSlider" href="#"><i class="fa fa-plus"></i> Regístrate</a>
                    <a class=" botonSlider2" href="#"><i class="fa fa-check"></i> Iniciar Sesión</a>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>
       
    

</asp:Content>
