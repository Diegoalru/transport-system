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

        #region Varios
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

        #region  Usuario
        [WebMethod]
        public Boolean InsertaUsuario(string Usuario, string Clave)
        {
            try
            {
                string query = $@"
                INSERT
                    INTO 
                        USUARIO
                        (USERNAME, PASSWORD)
                    VALUES
                        (
                            '{Usuario}'
                            ,N'{Clave}'
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
                string query = $@"SELECT USERNAME AS [Nombre_de_Usuario] FROM USUARIO;";
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
        public Boolean ExisteUsuario(string Usuario)
        {
            try
            {
                bool existe;
                string query = $@"
                SELECT 
                    *
                FROM 
                    USUARIO
                WHERE 
                    USERNAME = '{Usuario}';";
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
        public Boolean EliminaUsuario(string Usuario)
        {
            try
            {
                string query = $@"
                DELETE 
                    FROM
                        USUARIO
                    WHERE
                        USERNAME = '{Usuario}';";
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
        public Boolean ModificaUsuario(string Usuario, string Clave)
        {
            try
            {
                string query = $"UPDATE USUARIO SET PASSWORD = N'{Clave}' WHERE USERNAME = '{Usuario}';";
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

        #region  Persona
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

        #region  TipoContacto
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

        #region  TipoIdentificador
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
        public Boolean InsertaTipoIdentificador(string Tipo)
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

        #region  Contacto
        [WebMethod]
        public Boolean InsertaContacto(int Tipo, string Usuario, string Dato)
        {
            try
            {
                string query = $"INSERT INTO CONTACTO (FK_TIPO, FK_PERSONA, DATO) VALUES ({Tipo}, (SELECT dbo.GET_PERSONACODE('{Usuario}');), N'{Dato}');";
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

        [WebMethod]
        public Boolean ModificaContacto(int Tipo, string Usuario, string Dato)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                string query = $"UPDATE CONTACTO SET DATO = N'{Dato}' WHERE TIPO = {Tipo} AND FK_PERSONA = (SELECT dbo.GET_PERSONACODE('{Usuario}'));";
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

        #region  Identificador
        [WebMethod]
        public Boolean InsertaIndentificador(int Tipo, string Usuario, string Dato)
        {
            try
            {
                string query = $"INSERT INTO IDENTIFICADOR (FK_TIPO, FK_PERSONA, DATO) VALUES ({Tipo}, (SELECT dbo.GET_PERSONACODE('{Usuario}')), N'{Dato}');";
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

        [WebMethod]
        public Boolean ModificaIndentificador(int Tipo, string Usuario, string Dato)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                string query = $"UPDATE IDENTIFICADOR SET DATO = N'{Dato}' WHERE TIPO = {Tipo} AND FK_PERSONA = (SELECT dbo.GET_PERSONACODE('{Usuario}'));";
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

        #region  Paradas
        [WebMethod]
        public Boolean InsertaParada(string POSX, string POSY, string Nombre)
        {
            try
            {
                string query = $"INSERT INTO PARADA (POS_X, POS_Y, NOMBRE) VALUES ('{POSX}', '{POSY}', N'{Nombre}');";
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

        [WebMethod]
        public Boolean ModificaParada(string Nombre, string POSX, string POSY)
        {
            try
            {
                string query = $"UPDATE PARADA SER POS_X = '{POSX}', POS_Y = '{POSY}' WHERE NOMBRE = N'{Nombre}';";
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

        [WebMethod]
        public Boolean EliminaParada(string Nombre)
        {
            try
            {
                string query = $"DELETE FROM PARADA WHERE NOMBRE = N'{Nombre}';";
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

        [WebMethod]
        public DataSet RetornaParada()
        {
            try
            {
                DataSet ds = new DataSet();
                string query = $@"SELECT NOMBRE AS [Nombre_de_Parada] FROM PARADA;";
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
                return ds;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        [WebMethod]
        public Boolean ExisteParada(string Nombre)
        {
            try
            {
                string query = $"SELECT NOMBRE FROM PARADA WHERE NOMBRE = '{Nombre}';";
                SqlConnection conn = new SqlConnection(ConnectionString);
                bool existe;
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        var result = cmd.ExecuteReader();
                        existe = result.HasRows;
                    }
                    conn.Close();
                }
                return existe;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
        #endregion

        /*
         * TODO: Muestra la lista del total de registros
         */

        #region  Registro

        [WebMethod]
        public void Prueba()
        {
            InsertaRegistro("Espartan100", new DateTime(2020, 01, 01), 25000, false);
        }

        [WebMethod]
        public Boolean InsertaRegistro(string Usuario, DateTime MesCobro, decimal Monto, bool FuePagado)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                string query = $@"
                INSERT 
                    INTO 
                        REGISTRO 
                        (FK_PERSONA
                        ,MES_AL_COBRO
                        ,MONTO
                        ,FUE_PAGADO) 
                    VALUES 
                        (
                        (SELECT dbo.GET_PERSONACODE('{Usuario}'))
                        ,DATEFROMPARTS({MesCobro.Year}, {MesCobro.Month}, {MesCobro.Day})
                        ,{Monto}
                        ,{(FuePagado ? 1 : 0)}
                        );";
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

        [WebMethod]
        public Boolean ExisteRegistro(string Usuario, DateTime MesCobro)
        {
            try
            {
                bool existe;
                SqlConnection conn = new SqlConnection(ConnectionString);
                string query = $"SELECT * FROM REGISTRO WHERE FK_PERSONA = (SELECT dbo.GET_PERSONACODE('{Usuario}'));";
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        var result = cmd.ExecuteReader();
                        existe = result.HasRows;
                    }
                    conn.Close();
                }
                return existe;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public Boolean ModificaRegistro(string Usuario, DateTime MesCobro, bool Pago)
        {
            try
            {
                string query = $"UPDATE REGISTRO SET [FUE_PAGADO] = {Pago} WHERE [MES_AL_COBRO]  AND FK_PERSONA = (SELECT dbo.GET_PERSONACODE('{Usuario}'));";
                SqlConnection conn = new SqlConnection(ConnectionString);
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand())
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

        #region  Colegio
        [WebMethod]
        public Boolean InsertaColegio(string Nombre)
        {
            try
            {
                string query = $"INSERT INTO COLEGIO (NOMBRE) VALUES (N'{Nombre}');";
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

        [WebMethod]
        public Boolean ExisteColegio(string Nombre)
        {
            try
            {
                string query = $"SELECT NOMBRE FROM COLEGIO WHERE NOMBRE = N'{Nombre}';";
                SqlConnection conn = new SqlConnection(ConnectionString);
                bool existe;
                using (conn)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        var result = cmd.ExecuteReader();
                        existe = result.HasRows;
                    }
                    conn.Close();
                }
                return existe;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        [WebMethod]
        public DataSet RetornaColegio()
        {
            try
            {
                DataSet ds = new DataSet();
                string query = $@"SELECT CODE, NOMBRE FROM COLEGIO;";
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
        #endregion

        #region Encargado
        //FIXME
        [WebMethod]
        public Boolean InsertaEncargado(string Nombre)
        {
            try
            {
                string query = $"INSERT INTO COLEGIO (NOMBRE) VALUES (N'{Nombre}');";
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

        #region Paginas
        [WebMethod]
        public DataSet InfoEstudiante(string Usuario)
        {
            try
            {
                string query = $"SELECT * FROM dbo.RETORNAINFOESTU('{Usuario}')";
                SqlConnection conn = new SqlConnection(ConnectionString);
                DataSet ds = new DataSet();
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
        public DataSet InfoPagos(string Usuario)
        {
            try
            {
                string query = $"SELECT * FROM dbo.RETORNAPAGOS('{Usuario}')";
                SqlConnection conn = new SqlConnection(ConnectionString);
                DataSet ds = new DataSet();
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
        #endregion

    }
}
