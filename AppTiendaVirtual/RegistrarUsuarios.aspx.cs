using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Controlador;
using Modelo;
using System.Configuration;

namespace AppTiendaVirtual
{
    public partial class RegistrarUsuarios : System.Web.UI.Page
    {
        private Usuario usuario;
        private ControladorADO controlador;

        protected void Page_Load(object sender, EventArgs e)
        {
            string strCnx = ConfigurationManager.ConnectionStrings["stringConexion"].ConnectionString;

            this.controlador = new ControladorADO(strCnx);
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                this.crearObjeto();

                this.controlador.registrar(this.usuario);

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void crearObjeto()
        {
            this.usuario = new Usuario(
                this.txtEmail.Text.Trim(),
                this.txtNombreCompleto.Text.Trim(),
                this.txtPassword.Text.Trim());
        }
    }//
}//