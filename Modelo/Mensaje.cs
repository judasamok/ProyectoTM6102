using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Mensaje
    {

        private string strNombre, strEmail, strComentario;

        public string nombre
        {
            set => this.strNombre = (value.Trim().Equals("") ?
                throw new Exception("No se deja en blanco") : value);
            get => this.strNombre;
        }

        public string email
        {
            set => this.strEmail = (value.Trim().Equals("") ?
                throw new Exception("No se deja en blanco") : value);
            get => this.strEmail;
        }

        public string comentario
        {
            set => this.strComentario = (value.Trim().Equals("") ?
                throw new Exception("No se deja en blanco") : value);
            get => this.strComentario;
        }

        public Mensaje(string pNombre, string pEmail, string pComentario)
        {
            this.nombre = pNombre;
            this.email = pEmail;
            this.comentario = pComentario;
        }

    }//end
}//end 
