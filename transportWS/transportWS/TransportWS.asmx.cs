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
    [WebService(Namespace = "http://www.transportservice.com/", Name = "TransportService", Description = "Web Service. ULACIT IIIC0 2019")]
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
        private string ConnectionString = ConfigurationManager.ConnectionStrings["SqlServer"].ConnectionString;
        #endregion

        #region MetodosVarios
        [WebMethod]
        public Boolean ValidaConexion()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    conn.Close();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        [WebMethod(Description = "Metodo de retorna un saludo.", MessageName = "Saludo")]
        public String Saludo(string nombre)
        {
            return $"¡Hola {nombre}!";
        }

        [WebMethod]
        public Boolean Login(string Username, string Password)
        {
            try
            {
                bool existe;
                string query = $"SELECT dbo.Login('{Username}', N'{Password}');";
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        bool result = (bool)cmd.ExecuteScalar();
                        existe = result;
                    }
                    conn.Close();
                    return existe;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

        #region MetodosUsuario
        [WebMethod]
        public Boolean InsertaUsuario(string Usuario, string Clave, string Email)
        {
            try
            {
                string query = $@"
                INSERT
                    INTO 
                        USUARIO
                        (USERNAME, PASSWORD, EMAIL)
                    VALUES
                        (
                            '{Usuario}'
                            ,N'{Clave}'
                            ,N'{Email}'
                        );";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteReader();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public DataSet RetornaUsuario()
        {
            try
            {
                DataSet ds = new DataSet();
                string query = $@"SELECT USERNAME AS [Nombre_de_Usuario], Email AS [Correo_Electrónico] FROM USUARIO;";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
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
                System.Console.WriteLine(ex.Message);
                return null;
            }
        }

        [WebMethod]
        public Boolean ExisteUsuario(string Usuario, string Email)
        {
            try
            {
                bool existe;
                string query = $@"
                SELECT 
*                   *
                FROM 
                    USUARIO
                WHERE 
                    USERNAME = '{Usuario}'
                    AND EMAIL = N'{Email}';";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        var result = cmd.ExecuteReader();
                        existe = result.HasRows;
                    }
                }
                conn.Close();
                return existe;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public Boolean EliminaUsuario(string Usuario, string Email)
        {
            try
            {
                string query = $@"
                DELETE 
                    FROM
                        USUARIO
                    WHERE
                        USERNAME = '{Usuario}' AND EMAIL = N'{Email}';";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteReader();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public Boolean ModificaUsuario(string Usuario, string Email, string Clave)
        {
            try
            {
                string query = $"UPDATE USUARIO SET PASSWORD = N'{Clave}' WHERE USERNAME = '{Usuario}' AND EMAIL = N'{Email}';";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        #endregion

        #region MetodosPersona
        [WebMethod]
        public Boolean InsertaPersona(string PNombre, string SNombre, string PApellido, string SApellido, char Sexo, DateTime FN, string Usuario)
        {
            try
            {
                string query = $@"
                INSERT
                    INTO 
                        PERSONA 
                        (
                            PRIMER_NOMBRE
                            ,SEGUNDO_NOMBRE
                            ,PRIMER_APELLIDO
                            ,SEGUNDO_APELLIDO
                            ,SEXO
                            ,FECHA_NACIMIENTO
                            ,FK_USUARIO
                        )
                    VALUES
                        (
                            N'{PNombre}'
                            ,N'{SNombre}'
                            ,N'{PApellido}'
                            ,N'{SApellido}'
                            ,'{Sexo}'
                            ,DATEFROMPARTS({FN.Year}, {FN.Month}, {FN.Day})
                            ,(SELECT dbo.GET_USERCODE('{Usuario}'))
                        );";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteReader();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public Boolean ModificaPersona(string PNombre, string SNombre, string PApellido, string SApellido, char Sexo/*, DateTime FN*/, string Usuario)
        {
            try
            {
                string query = $@"
                UPDATE 
                    PERSONA
                    SET 
                        PRIMER_NOMBRE = N'{PNombre}'
                        ,SEGUNDO_NOMBRE = N'{SNombre}'
                        ,PRIMER_APELLIDO = N'{PApellido}'
                        ,SEGUNDO_APELLIDO = N'{SApellido}'
                        ,SEXO = '{Sexo}'
                    WHERE 
                        FK_USUARIO = (SELECT dbo.GET_USERCODE('{Usuario}'));";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        [WebMethod]
        public DataSet RetornaPersona()
        {
            try
            {
                DataSet ds = new DataSet();
                string query = $@"SELECT * FROM [dbo].[V_RETORNA_PERSONAS];";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
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
                System.Console.WriteLine(ex.Message);
                return null;
            }
        }

        [WebMethod]
        public Boolean ExistePersona(string PNombre, string PApellido, string SApellido)
        {
            try
            {
                bool existe;
                string query = $@"
                SELECT 
                    *                   
                FROM 
                    PERSONA
                WHERE 
                    PRIMER_NOMBRE = N'{PNombre}'
                    AND PRIMER_APELLIDO = N'{PApellido}'
                    AND SEGUNDO_APELLIDO = N'{SApellido}';";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        var result = cmd.ExecuteReader();
                        existe = result.HasRows;
                    }
                }
                conn.Close();
                return existe;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public Boolean EliminaPersona(string PNombre, string PApellido, string SApellido)
        {
            try
            {
                string query = $@"
                DELETE 
                    FROM
                        PERSONA
                    WHERE
                        PRIMER_NOMBRE = N'{PNombre}'
                        AND PRIMER_APELLIDO = N'{PApellido}'
                        AND SEGUNDO_APELLIDO = N'{SApellido}';";
                SqlConnection conn = new SqlConnection();
                using (conn = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteReader();
                    }
                }
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

        #region MetodosTipoContacto
        [WebMethod]
        public DataSet RetornaTipoContacto()
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                DataSet ds = new DataSet();
                string query = "SELECT [CODE] AS CODIGO, [NOMBRE] AS TIPO FROM [TIPO_CONTACTO] ORDER BY [CODE] ASC;";
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            adapter.Fill(ds);
                        }
                    }
                    conn.Close();
                }
                return ds;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        [WebMethod]
        public bool InsertaTipoContacto(string Tipo)
        {
            try
            {
                string query = $"INSERT INTO TIPO_CONTACTO (NOMBRE) VALUES (N'{Tipo}');";
                SqlConnection conn = new SqlConnection(ConnectionString);
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

        #region MetodosTipoIdentificador
        [WebMethod]
        public DataSet RetornaTipoIdentificador()
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                DataSet ds = new DataSet();
                string query = "SELECT [CODE] AS CODIGO,[NOMBRE] AS TIPO FROM [TIPO_IDENTIFICADOR] ORDER BY [CODE] ASC;";
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            adapter.Fill(ds);
                        }
                    }
                    conn.Close();
                }
                return ds;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        [WebMethod]
        public bool InsertaTipoIdentificador(string Tipo)
        {
            try
            {
                string query = $"INSERT INTO TIPO_IDENTIFICADOR (NOMBRE) VALUES (N'{Tipo}');";
                SqlConnection conn = new SqlConnection(ConnectionString);
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

        #region MetodosContacto
        [WebMethod]
        public bool InsertaContacto(string Tipo)
        {
            try
            {
                string query = $"INSERT INTO TIPO_IDENTIFICADOR (NOMBRE) VALUES (N'{Tipo}');";
                SqlConnection conn = new SqlConnection(ConnectionString);
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

    }
}
