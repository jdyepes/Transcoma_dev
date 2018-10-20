using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Npgsql;
using System.Configuration;
using System.Web;
using System.Data;

namespace TranscomaAPI.Persistencia.Dao
{
    public abstract class Dao
    {
        private NpgsqlConnection _con;
        private NpgsqlCommand _command;
        private DataTable _dataTable;
        private string _cadena;
        private int _cantidadRegistros;

       
        public Dao()
        {
            CrearStringConexion();
        }

        public int cantidadRegistros
        {
            get { return _cantidadRegistros; }
        }

        /// <summary>
        /// Busca los parametros de conexion ubicados en el archivo app.config
        /// </summary>
        private void CrearStringConexion()
        {
            _cadena = ConfigurationManager.ConnectionStrings["postgreString"].ConnectionString;
        }

        /// <summary>
        /// Retorna el estado de la conexion
        /// </summary>
        /// <returns></returns>
        private bool IsConnected()
        {
            if (_con == null)
                return false;

            if (_con.State == System.Data.ConnectionState.Open)
                return true;

            return false;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public bool Conectar()
        {
            try
            {
                _con = new NpgsqlConnection(_cadena);
                _con.Open();
                return true;
            }
            catch (NpgsqlException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public void Desconectar()
        {
            if (_con != null && IsConnected())
                _con.Close();
        }

        /// <summary>
        /// Ejecutar el StoredProcedure con un valor de retorno (ResultSet), 
        /// habilita el uso de las funciones "GetInt, GetString, etc" y devuelve un objeto DataTable.
        /// </summary>
        /// <returns></returns>
        public DataTable EjecutarReader()
        {
            try
            {
                _dataTable = new DataTable();
                _dataTable.Load(_command.ExecuteReader());
                Desconectar();
                _cantidadRegistros = _dataTable.Rows.Count;
            }
            catch (NpgsqlException exc)
            {
                Desconectar();
                throw exc;
            }
            catch (Exception exc)
            {
                Desconectar();
                throw exc;
            }
            return _dataTable;
        }

        /// <summary>
        /// Ejecutar el StoredProcedure sin valor de retorno (ResultSet), devuelve el número de filas afectadas.
        /// </summary>
        /// <returns></returns>
        public int EjecutarQuery()
        {
            try
            {
                int filasAfectadas = _command.ExecuteNonQuery();
                Desconectar();
                return filasAfectadas;
            }
            catch (NpgsqlException exc)
            {
                Desconectar();
                throw exc;
            }
            catch (Exception exc)
            {
                Desconectar();
                throw exc;
            }
        }

        /// <summary>
        /// Crea el comando para ejecutar el StoredProcedure, 
        /// Ejemplo: StoredProcedure("nombreSP(@param)")
        /// </summary>
        public NpgsqlCommand StoredProcedure(string sp)
        {
            try
            {
                _command = new NpgsqlCommand("select * from " + sp, _con);
            }
            catch (NpgsqlException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw e;
            }
            return _command;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nombre"></param>
        /// <param name="valor"></param>
        public void AgregarParametro(string nombre, object valor)
        {
            try
            {
                _command.Parameters.AddWithValue("@" + nombre, valor);
            }
            catch (NpgsqlException e)
            {
                throw e;
            }
            catch (NullReferenceException exc)
            {
                throw exc;
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="columna"></param>
        /// <returns></returns>
        public int GetInt(int fila, int columna)
        {
            try
            {
                int intItem = Convert.ToInt32(_dataTable.Rows[fila][columna]);
                return intItem;
            }
            catch (IndexOutOfRangeException e)
            {
                throw e;
            }
            catch (FormatException e)
            {
                throw e;
            }
            catch (OverflowException e)
            {
                throw e;
            }
            catch (NullReferenceException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="fila"></param>
        /// <param name="columna"></param>
        /// <returns></returns>
        public string GetString(int fila, int columna)
        {
            try
            {
                string stringItem = Convert.ToString(_dataTable.Rows[fila][columna]);
                return stringItem;
            }
            catch (IndexOutOfRangeException e)
            {
                throw e;
            }
            catch (FormatException e)
            {
                throw e;
            }
            catch (ArgumentNullException e)
            {
                throw e;
            }
            catch (NullReferenceException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public DateTime GetDateTime(int fila, int columna)
        {
            try
            {
                DateTime dateTimeItem = Convert.ToDateTime(_dataTable.Rows[fila][columna]);
                return dateTimeItem;
            }
            catch (IndexOutOfRangeException e)
            {
                throw e;
            }
            catch (FormatException e)
            {
                throw e;
            }
            catch (ArgumentNullException e)
            {
                throw e;
            }
            catch (NullReferenceException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
