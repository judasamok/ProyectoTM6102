using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Product
    {
        private string strCodigo, strDescripcion;
        private decimal decPrecio;

        public string codigo
        {
            set => this.strCodigo = value;
            get => this.strCodigo;
        }

        public string descripcion
        {
            set => this.strDescripcion = value;
            get => this.strDescripcion;
        }

        public decimal precio
        {
            set => this.decPrecio = value;
            get => this.decPrecio;
        }

        public Product()
        {
            this.codigo = "";
            this.descripcion = "";
            this.precio = 0;
        }
        
    }
}
