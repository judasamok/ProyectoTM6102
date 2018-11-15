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

    }//
}//
