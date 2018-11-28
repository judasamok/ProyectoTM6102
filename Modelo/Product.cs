using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Product
    {
        private string strCodigo, strDescripcion, strNombre, strNombreDisco;
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

        public string nombre
        {
            set => this.strNombre = value;
            get => this.strNombre;
        }

        public string nombreDisco
        {
            set => this.strNombreDisco = value;
            get => this.strNombreDisco;
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
            this.nombre = "";
            this.nombreDisco = "";
            this.precio = 0;
        }
        
    }
}
