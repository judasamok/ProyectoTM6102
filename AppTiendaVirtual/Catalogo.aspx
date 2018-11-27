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
                <asp:DropDownList type="button" ID="ddlCategorias" runat="server" CssClass="form-control select selectpicker" OnSelectedIndexChanged="ddlCategorias_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

            </div>


        </div>
        

        <%--<div class="form-group card">
            <asp:GridView ID="dgtProductos" runat="server" AutoGenerateColumns="false" 
                DataKeyNames="codigo" CssClass="card card-cascade narrower card-ecommerce"
                Width="90%" Style="margin-top: 50px; margin-left: 40px; margin-right: 40px"
                HorizontalAlign="Center" OnRowCommand="dgtProductos_RowCommand" ShowHeader="False">
                <Columns>
                    <asp:ImageField DataImageUrlField="fotoUrl" ControlStyle-CssClass="col-md-2">
                        <ControlStyle CssClass="view view-cascade overlay"></ControlStyle>
                    </asp:ImageField>
                    
                    <asp:BoundField DataField="codigo" HeaderText="Codigo" HeaderStyle-CssClass="card card-cascade narrower card-ecommerce" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripcion" HeaderStyle-CssClass="card-body card-body-cascade text-center" />
                    
                    <asp:BoundField DataField="precioCompra" HeaderText="Precio Compra" HeaderStyle-CssClass="card-footer px-1" />
                    <asp:BoundField DataField="montoDescuento" HeaderText="Monto descuento" HeaderStyle-CssClass="card-footer px-1" />
                    <asp:BoundField DataField="subtotal" HeaderText="sub total" HeaderStyle-CssClass="card-footer px-1" />
                </Columns>
                
                <HeaderStyle CssClass="card card-cascade narrower card-ecommerce" />
            </asp:GridView>
        </div><!--end-->--%>

        <asp:GridView ID="dgtProductos" runat="server" AutoGenerateColumns="False" 
            Width="90%" Style="margin-top: 50px; margin-left: 40px; 
            margin-right: 40px" CssClass="table table-striped table-bordered table-hover" 
            HorizontalAlign="Center" OnRowCommand="dgtProductos_RowCommand"
            DataKeyNames="codigo" ShowHeader="False">
            <Columns>
                <asp:ImageField DataImageUrlField="fotoUrl" ControlStyle-CssClass="col-md-2">
                    <ControlStyle CssClass="col-md-12"></ControlStyle>

                    <ItemStyle Width="50%" />
                </asp:ImageField>
                <asp:BoundField DataField="codigo" Visible="False"></asp:BoundField>
                <asp:BoundField DataField="descripcion" Visible="False" HeaderText="Descripcion" ItemStyle-CssClass="col-md-10"></asp:BoundField>
                <asp:BoundField DataField="precioCompra" Visible="False" HeaderText="PrecioCompra"></asp:BoundField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <itemstyle width="100px" />
                        <p>
                            Codigo del poroducto: 
                            <asp:Label Style="" ID="lblCodigo" runat="server" Text='<%#Eval("codigo") %>' />
                        </p>
                        <p>
                            Descripcion: 
                            <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcion") %>' />
                        </p>
                        <p>
                            Precio: 
                                    <asp:Label ID="lblPrecioCompra" runat="server" Text='<%#Eval("precioCompra") %>' />
                        </p>
                        <asp:Button ID="AddButton" runat="server" class="btn btn-primary"
                            CommandName="AddToCart"
                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                            Text="Add to Cart" OnClick="AddButton_Click" />
                    </ItemTemplate>
                    <ItemStyle Width="60%" />
                </asp:TemplateField>


            </Columns>
        </asp:GridView>



    </div>
    <!--end container-->


</asp:Content>
