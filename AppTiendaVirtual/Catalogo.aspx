<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="AppTiendaVirtual.Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid CatCol1 pb-3">
        <div class="row text-center text-light">
            <div class="col mt-2">
                <hr class="my-5">
                <h2 class="h1-responsive font-weight-bold">Selecciona el genero</h2>
            </div>
        </div>
        <div class="row text-center text-light">
            <div class="col-md-12 mt-2">
                <p >La musica es el arte más directo, entra por el oído y va al corazón. No pierdas la oportunidad consigue la musica que quieras de cualquier género a un grandioso precio</p>
            </div>
        </div>
        <div class="row text-center d-flex justify-content-center mt-3">
            <asp:DropDownList type="button" ID="ddlCategorias" runat="server" CssClass="form-control select selectpicker mb-5" OnSelectedIndexChanged="ddlCategorias_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>

        <asp:GridView ID="dgtProductos" runat="server" AutoGenerateColumns="False"
            Width="90%" Style="margin-top: 50px; margin-left: 40px; margin-right: 40px"
            CssClass="table table-striped border-0 table-hover"
            HorizontalAlign="Center" OnRowCommand="dgtProductos_RowCommand"
            DataKeyNames="codigo" ShowHeader="False">
            <Columns>
                <asp:ImageField DataImageUrlField="fotoUrl" ControlStyle-CssClass="col-md-2">
                    <ControlStyle CssClass="col-md-12 rounded-top"></ControlStyle>

                    <ItemStyle Width="20%" CssClass="CatCol4 border-bottom "/>
                </asp:ImageField>
                <asp:BoundField DataField="codigo" Visible="False"></asp:BoundField>
                <asp:BoundField DataField="nombre" Visible="False" HeaderText="Nombre" ItemStyle-CssClass="col-md-10"></asp:BoundField>
                <asp:BoundField DataField="nombreDisco" Visible="False" HeaderText="NombreDisco" ItemStyle-CssClass="col-md-10"></asp:BoundField>
                <asp:BoundField DataField="descripcion" Visible="False" HeaderText="Descripcion" ItemStyle-CssClass="col-md-10"></asp:BoundField>
                <asp:BoundField DataField="precioCompra" Visible="False" HeaderText="PrecioCompra"></asp:BoundField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <itemstyle width="100px" />
                        <div class="card-body card-body-cascade text-center text-light">
                        <%--<p>--%>
                            <%--Codigo del poroducto: --%>
                        <%--    <asp:Label Style="" ID="lblCodigo" runat="server" Text='<%#Eval("codigo") %>' />
                        </p>--%>
                        <h4 class=" mb-4">
                           
                            <asp:Label ID="lblnombre" runat="server" Text='<%#Eval("nombre") %>' />
                        </h4>
                        <h2 class="card-title CatCol6 font-weight-bold">
                            <strong>    
                            
                            <asp:Label ID="lblNombreDisco" runat="server" Text='<%#Eval("nombreDisco") %>' />
                            </strong>
                        </h2>
                        <p class="card-text ">
                            
                            <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcion") %>' />
                        </p>
                            <div class="card-footer px-1 mt-5 pt-5 CatCol5 rounded">
                        <p>
                            Precio: ¢ 
                                    <asp:Label ID="lblPrecioCompra" runat="server" Text='<%#Eval("precioCompra") %>' />
                        </p>
                        <asp:Button ID="AddButton" runat="server" class="btn CatCol1"
                            CommandName="AddToCart"
                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                            Text="Add to Cart" OnClick="AddButton_Click" />
                        </div>
                   </div>
                    </ItemTemplate>
                    <ItemStyle Width="30%" CssClass="CatCol4 border-bottom mb-5"/>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <!--end container-->


</asp:Content>
