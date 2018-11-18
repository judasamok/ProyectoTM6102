<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="AppTiendaVirtual.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container w-50 h-75">
        <!-- Card -->
        <div class="card  Panel ">
            <!-- Card image -->
            <div class="view overlay">
                <img class="card-img-top" src="css/img/korn.png" alt="Card image cap">
                <a> <div class="mask rgba-white-slight"></div> </a>
            </div>

            <!-- Button -->
            <!-- Card content -->
            <div class="card-body ">
                <!-- Title -->
                <h4 class="card-title">Album Korn</h4>

                <hr>
                
                <!-- Text -->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>

            <!-- Card footer -->
            <div class="rounded-bottom mdb-color lighten-3 text-center pt-3">
                <ul class="list-unstyled list-inline font-small">
                    <p class="card-text">El total a pagar es:</p>
                    <li class="list-inline-item pr-2 white-text">
                        <i class=" pr-1"></i>05/10/2015
                    </li>
                    <a href="#" class="btn btn-outline-warning btn-md">Formalizar</a>
                </ul>
            </div>

        </div>
        <!-- end Card -->
			
	</div>
    

</asp:Content>
