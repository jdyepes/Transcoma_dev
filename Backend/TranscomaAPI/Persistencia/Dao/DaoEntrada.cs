using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Persistencia.Dao.Contrato;
using NLog;
using Npgsql;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Comun.Excepciones;
using System.Reflection;

namespace TranscomaAPI.Persistencia.Dao
{
    public class DaoEntrada : Dao, IDaoEntrada
    {
        Logger logger = LogManager.GetLogger("fileLogger");//logger

        public void Actualizar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public void Agregar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Consulta las entradas de un usuario especificando su id
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public List<Entidad> ConsultarEntradaPorUsuario(int idUsuario)
        {
            try
            {
                List<Entidad> _entradas = new List<Entidad>();
                Producto producto;
                Almacen almacen;

                Conectar();
                StoredProcedure("consultarEntradasCliente(@id)");
                AgregarParametro("id", idUsuario);
                EjecutarReader();

                Entrada entradaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = new Producto(GetInt(i, 2), GetString(i, 3), GetString(i, 4), GetString(i, 5), GetBool(i, 6));
                    almacen = new Almacen(GetInt(i, 7), GetString(i, 8), GetString(i, 9));
                    
                    entradaARetornar = FabricaEntidades.CrearEntrada(GetInt(i, 0), GetDateTime(i, 1), producto,almacen);
                    _entradas.Add(entradaARetornar);
                }

                return _entradas;
            }
            catch (NullReferenceException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionObjetoNulo(e, "Parametros nulos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (InvalidCastException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionCasteoIncorrecto(e, "Casteo no correcto en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (NpgsqlException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionBaseDeDatos(e, "Error en la base de datos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (Exception e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionGeneral(e, DateTime.Now);
            }
            finally
            {
                Desconectar();
            }
        }  

        /// <summary>
        /// Consulta todas las entradas cuando esta en rol Administrador
        /// </summary>
        /// <returns></returns>
        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _entradas = new List<Entidad>();
                Producto producto;
                Almacen almacen;
                Cliente cliente;
                Conectar();
                StoredProcedure("consultarTodasEntradas()");              
                EjecutarReader();

                Entrada entradaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = new Producto(GetInt(i, 2), GetString(i, 3), GetString(i, 4), GetString(i, 5), GetBool(i, 6));
                    cliente = new Cliente(GetInt(i, 0), GetString(i, 7), GetString(i, 8));
                    almacen = new Almacen(GetInt(i, 9), GetString(i, 10), GetString(i, 11));

                    entradaARetornar = FabricaEntidades.CrearEntrada(GetInt(i, 0), GetDateTime(i, 1), producto, almacen, cliente);
                    _entradas.Add(entradaARetornar);
                }

                return _entradas;
            }
            catch (NullReferenceException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionObjetoNulo(e, "Parametros nulos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (InvalidCastException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionCasteoIncorrecto(e, "Casteo no correcto en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (NpgsqlException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionBaseDeDatos(e, "Error en la base de datos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (Exception e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionGeneral(e, DateTime.Now);
            }
            finally
            {
                Desconectar();
            }
        }

        public void Eliminar(Entidad entidad)
        {
            throw new NotImplementedException();
        }
    }

}
