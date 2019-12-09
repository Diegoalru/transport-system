using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;


namespace transportWS
{
    /// <summary>
    /// Descripción breve de TransportWS
    /// </summary>
    [WebService(Namespace = "http://www.transportservice.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class TransportWS : System.Web.Services.WebService
    {
        #region Variables
        /// <summary>
        /// Cadena de conexion con la base de datos.
        /// </summary>
        private string ConnectionString = ConfigurationManager.ConnectionStrings["SqlServer"].ConnectionString.ToString();
        #endregion

        [WebMethod(Description = "Metodo de retorna un saludo.", MessageName = "Saludo")]
        public string Saludo(string nombre)
        {
            return $"¡Hola {nombre}!";
        }

        [WebMethod(Description = "Retorna una lista de todos los usuarios que se encuentran en la base de datos.")]
        public DataSet GetUsuarios()
        {
            try
            {
                DataSet ds = new DataSet();
                SqlConnection conn = new SqlConnection();
                string query = "SELECT * FROM USUARIOS;";
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            adapter.Fill(ds);
                        }
                    }
                }
                conn.Close();
                return ds;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                return null;
            }
        }

        [WebMethod(Description = "Metodo que valida la existencia de un usuario.")]
        public bool ExisteUsuario(string usuario)
        {
            try
            {
                SqlConnection conn = new SqlConnection();
                bool existe;
                string query = $"SELECT * FROM USUARIOS WHERE [USER] = {usuario};";
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        var result = cmd.ExecuteNonQuery();
                        if (result != 1)
                            existe = false;
                        else
                            existe = true;
                    }
                }
                conn.Close();
                return existe;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                return false;
            }
        }

        [WebMethod(Description = "Metodo que inserta un Usuario.")]
        public void InsertaUsuario(string usuario, string clave)
        {
            try
            {
                SqlConnection conn = new SqlConnection();
                string query = $"INSERT INTO USUARIOS ([USER], [PASS]) VALUES ('{usuario}', N'{clave}');";
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteReader();
                    }
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
    }
}
