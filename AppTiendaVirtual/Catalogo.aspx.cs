using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Controlador;
using Modelo;
using System.Configuration;
using System.Data;

namespace AppTiendaVirtual
{
    public partial class Catalogo : System.Web.UI.Page
    {

        private List<Product> carrito;

        private ControladorADO controlador;

        protected void Page_Load(object sender, EventArgs e)
        {
            //csrrito en blanco
            this.carrito = new List<Product>();

            this.controlador = new ControladorADO(this.obtenerStringConexion());

            if (!IsPostBack)
            {
                this.cargarCategorias();
            }
        }

        private string obtenerStringConexion()
        {
            return ConfigurationManager.ConnectionStrings["stringConexion"].ConnectionString;
        }

        private void cargarCategorias()
        {
            try
            {
                this.ddlCategorias.DataSource = this.controlador.categorias().Tables[0];
                this.ddlCategorias.DataValueField = "codigo";
                this.ddlCategorias.DataTextField = "descripcion";
                this.ddlCategorias.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void ddlCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                this.dgtProductos.DataSource = this.controlador.consultarProductos(int.Parse(this.ddlCategorias.SelectedValue)).Tables[0];

                this.dgtProductos.DataBind();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }//end

        protected void AddButton_Click(object sender, EventArgs e)
        {
          
        }

        protected void dgtProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if(e.CommandName  == "AddToCart")
            {
                GridView grid = (GridView)sender;
                int fila = int.Parse(e.CommandArgument.ToString());



                Product product = new Product( );


                product.codigo = this.dgtProductos.DataKeys[fila]["codigo"].ToString();
                product.descripcion = (this.dgtProductos.Rows[fila].FindControl("lblDescripcion") as Label).Text;
                product.precio = decimal.Parse( (this.dgtProductos.Rows[fila].FindControl("lblPrecioCompra") as Label).Text );
               // product.strDescripcion = this.dgtProductos.Rows[this.ddlCategorias.SelectedIndex].Cells[2].Text;

                //Product product = new Product();


                //product.strCodigo = this.dgtProductos.Rows[fila].Cells[0].Text.ToString();

                //product.strDescripcion = this.dgtProductos.Rows[fila].Cells[1].Text.ToString();


                this.carrito.Add(product);

            }

        }
    }
}