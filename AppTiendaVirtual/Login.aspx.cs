using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Web.Security;
using Controlador;


namespace AppTiendaVirtual
{
    public partial class Login : System.Web.UI.Page
    {
        private ControladorADO controlador;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.controlador = new ControladorADO(ConfigurationManager.ConnectionStrings["stringConexion"].ConnectionString);

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {

                if (this.controlador.validarPerfil(this.txtEmail.Text.Trim(),
                    this.txtPassword.Text.Trim()))
                {

                    FormsAuthentication.SetAuthCookie(this.txtEmail.Text, false);
                    Response.Redirect("default.aspx");
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}