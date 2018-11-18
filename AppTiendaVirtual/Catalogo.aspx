<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="AppTiendaVirtual.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row text-center">
            <div class="col mt-5">
                <hr class="my-5">
                <h2 class="h1-responsive font-weight-bold">Grandes Exitos</h2>
            </div>
        </div>

        <div class="row text-center d-flex justify-content-center">
            <div class="col-lg-4 ">

            </div>

            <div>
                <p>La musica es el arte más directo, entra por el oído y va al corazón. No pierdas la oportunidad consigue la musica que quieras de cualquier género a un grandioso precio</p>

            </div>

            <div>
                <button class="btn btn-primary " type="button">Categoria</button>
                <asp:DropDownList ID="ddlCanton" runat="server" Width="100%" CssClass="form-control"></asp:DropDownList>
            </div>  
        </div>

        <div class="row ext-center my-5 mt-5">
            <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                <div class="card card-cascade narrower card-ecommerce">
                    <div class="view view-cascade overlay">
                        <img src="CSS/IMG/KornRAR2013-copy.png" class="card-img-top" alt="sample photo">
                        <a>
                            <div class="mask rgba-white-slight waves-effect waves-light"></div>
                        </a>
                    </div>
                
                    <div class="card-body card-body-cascade text-center">
                        <h5 class="grey-text">Korn</h5>
                        <h4 class="card-title">
                            <strong>
                                <a href="#">Follow the Leader</a>
                            </strong>
                        </h4>

                        <p class="card-text">Lanzado el 18 de agosto de 1998 a través de las discográficas Immortal y Epic Records. </p>

                        <div class="card-footer px-1">
                            <span class="float-left font-weight-bold">
                                <strong>10$</strong>
                            </span>
                            
                            <span class="float-right">
                                <i class="fa fa-shopping-cart grey-text ml-3"></i>
                                <i class="fa fa-heart ml-3"></i>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                <div class="card card-cascade narrower card-ecommerce">
                    <div class="view view-cascade overlay">
                        <img src="CSS/IMG/LimpBizkitReading2015-copy.png" class="card-img-top" alt="sample photo">
                        <a>
                            <div class="mask rgba-white-slight waves-effect waves-light"></div>
                        </a>
                    </div>

                    <div class="card-body card-body-cascade text-center">
                        <h5 class="grey-text">Limp Bizkit</h5>
                        <h4 class="card-title">
                            <strong>
                                <a href="#">Significant Other </a>
                            </strong>
                        </h4>

                        <p class="card-text">Fue grabado entre noviembre de 1998 y febrero de 1999 en NRG Recording Services </p>

                        <div class="card-footer px-1">
                            <span class="float-left font-weight-bold">
                                <strong>8$</strong>
                            </span>
                            <span class="float-right">
                                <i class="fa fa-shopping-cart grey-text ml-3"></i>
                                <i class="fa fa-heart grey-text ml-3"></i>
                            </span>
                        </div>
                    </div>
              
                </div>
           
            </div>

            <div class="col-lg-3 col-md-6 mb-md-0 mb-4">

                <div class="card card-cascade narrower card-ecommerce">
                    <div class="view view-cascade overlay">
                        <img src="CSS/IMG/PapaRoachKolnPalladium-copy.png" class="card-img-top" alt="sample photo">
                        <a>
                            <div class="mask rgba-white-slight waves-effect waves-light"></div>
                        </a>
                    </div>
                    
                    <div class="card-body card-body-cascade text-center">
                        <h5  class="grey-text">Papa Roach</h5>
                        <h4 class="card-title"><strong><a href="#">Metamorphosis</a></strong></h4>

                        <p class="card-text">Fue lanzado al mercado por Interscope el martes 24 de marzo de 2009.​</p>

                        <div class="card-footer px-1">
                            <span class="float-left font-weight-bold">
                                <strong>19$</strong>
                            </span>
                            <span class="float-right">
                                <i class="fa fa-shopping-cart grey-text ml-3"></i>
                                <i class="fa fa-heart grey-text ml-3"></i>
                            </span>
                        </div>
                    </div>
              
                </div>
         
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card card-cascade narrower card-ecommerce">
                    <div class="view view-cascade overlay">
                        <img src="CSS/IMG/SystemOfDown.png" class="card-img-top" alt="sample photo">
                        <a>
                            <div class="mask rgba-white-slight waves-effect waves-light"></div>
                        </a>
                    </div>

                    <div class="card-body card-body-cascade text-center">
                        <h5 class="grey-text">System of Down</h5>
                        <h4 class="card-title">
                            <strong><a href="#">Toxicity</a></strong>
                        </h4>

                        <p class="card-text">Publicado el 4 de septiembre de 2001 por American Recordings, dio a conocer la banda. </p>

                        <div class="card-footer px-1">
                            <span class="float-left font-weight-bold">
                                <strong>19$</strong>
                            </span>
                            <span class="float-right">
                                <i class="fa fa-shopping-cart grey-text ml-3"></i>
                                <i class="fa fa-heart ml-3"></i>
                            </span>
                        </div>
                    </div>             
                </div>
           
            </div>

        </div>

    </div><!--end container-->


    
</asp:Content>
