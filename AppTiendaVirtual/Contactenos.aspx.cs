using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Controlador;
using Modelo;

namespace AppTiendaVirtual
{
    public partial class Contactenos : System.Web.UI.Page
    {
        private Email email;
        private Mensaje ms;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {

            }
        }//end

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            this.ms = new Mensaje(this.txtNombre.Text.Trim(), this.txtEmail.Text.Trim(),
                this.txtComentario.Text.Trim());

            this.email = new Email();
            this.email.enviar(this.ms);

            Response.Write("<script language='Javascript'>"+
                "alert('Se ha enviado su mensaje');</script>");
            limpiarEspacios();

        }

        public void limpiarEspacios()
        {
            this.txtNombre.Text = "";
            this.txtEmail.Text = "";
            this.txtComentario.Text = "";
        }

    }//end
}//end