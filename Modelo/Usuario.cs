using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Usuario
    {
        public string email { set; get; }
        public string nombreCompleto { set; get; }
        public string password { set; get; }


        public Usuario(string pEmail, string pNombreCompleto, string pPassword)
        {
            this.email = pEmail;
            this.nombreCompleto = pNombreCompleto;
            this.password = pPassword;
        }
    }
}
