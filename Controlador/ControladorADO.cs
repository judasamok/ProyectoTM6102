using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Modelo;


namespace Controlador
{
    public class ControladorADO
    {
        private string strStringConexion;
        public string nombreUsuario, email;

        public ControladorADO(string pCnxConexion)
        {
            this.strStringConexion = pCnxConexion;
        }

        public bool validarPerfil(string pEmail, string pPassword)
        {
            try
            {
                bool autorizado = false;


                SqlConnection conexion = new SqlConnection(this.strStringConexion);
                conexion.Open();
                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "[Sp_Validar_Perfil]";


                comando.Parameters.AddWithValue("@email", pEmail);
                comando.Parameters.AddWithValue("@password", pPassword);


                SqlDataReader lector;
                lector = comando.ExecuteReader();

                if (lector.Read())
                {
                    this.email = lector["email"].ToString();
                    this.nombreUsuario = lector["NombreCompleto"].ToString();
                    autorizado = true;
                }

                return autorizado;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void registrar(Usuario user)
        {

            try
            {
                SqlConnection conexion = new SqlConnection(this.strStringConexion);

                conexion.Open();

                SqlCommand comando = new SqlCommand();

                comando.Connection = conexion;

                comando.CommandType = CommandType.StoredProcedure;

                comando.CommandText = "[Sp_Ins_Usuarios]";

                comando.Parameters.AddWithValue("@email", user.email);
                comando.Parameters.AddWithValue("@password", user.password);
                comando.Parameters.AddWithValue("@nombreCompleto", user.nombreCompleto);

                comando.ExecuteNonQuery();

                conexion.Close();
                conexion.Dispose();

                comando.Dispose();
            }
            catch (Exception ex)
            {

                throw ex;
            }



        }

        public DataSet categorias()
        {
            try
            {
                SqlConnection conexion = new SqlConnection(this.strStringConexion);
                conexion.Open();

                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                comando.CommandText = "select codigo,descripcion from [dbo].[Vp_CatalogoClasificaciones] order by codigo";
                comando.CommandType = CommandType.Text;

                DataSet datos = new DataSet();

                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = comando;


                adaptador.Fill(datos);

                conexion.Close();

                conexion.Dispose();
                comando.Dispose();
                adaptador.Dispose();

                return datos;

            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataSet consultarProductos(int pCategorias)
        {
            try
            {
                DataSet Lista = new DataSet("ListaProductos");

                SqlConnection conexion = new SqlConnection(this.strStringConexion);

                conexion.Open();

                SqlCommand comando = new SqlCommand();

                comando.Connection = conexion;

                comando.CommandType = CommandType.StoredProcedure;

                comando.CommandText = "[Sp_Cns_ProductosClasificacion]";

                comando.Parameters.AddWithValue("@clasificacion", pCategorias);

                SqlDataAdapter adaptador = new SqlDataAdapter();

                adaptador.SelectCommand = comando;

                adaptador.Fill(Lista);

                conexion.Close();
                conexion.Dispose();
                comando.Dispose();
                adaptador.Dispose();

                return Lista;

            }
            catch (Exception)
            {

                throw;
            }

        }

    }//
}//
