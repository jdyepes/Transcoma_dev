using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Persistencia.Dao.Contrato;
using NLog;
using Npgsql;
using TranscomaAPI.Comun.Excepciones;
using System.Reflection;

namespace TranscomaAPI.Persistencia.Dao
{
    public class DaoSalida : Dao, IDaoSalida
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

        public List<Entidad> ConsultarSalidaPorUsuario(int idUsuario)
        {
            try
            {
                List<Entidad> _salidas = new List<Entidad>();
                Producto producto;
                Almacen almacen;

                Conectar();
                StoredProcedure("consultarSalidasCliente(@id)");
                AgregarParametro("id", idUsuario);
                EjecutarReader();

                Salida SalidaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = FabricaEntidades.CrearProducto(GetInt(i, 2), GetString(i, 3), GetString(i, 4), GetString(i, 5), GetBool(i, 6));
                    almacen = FabricaEntidades.CrearAlmacen(GetInt(i, 7), GetString(i, 8), GetString(i, 9));

                    SalidaARetornar = FabricaEntidades.CrearSalida(GetInt(i, 0), GetDateTime(i, 1), producto, almacen);
                    _salidas.Add(SalidaARetornar);
                }

                return _salidas;
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
        /// Consulta todas las salidas cuando esta en rol Administrador
        /// </summary>
        /// <returns></returns>
        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _salidas = new List<Entidad>();
                Producto producto;
                Almacen almacen;
                Cliente cliente;
                Conectar();
                StoredProcedure("consultarTodasSalidas()");
                EjecutarReader();

                Salida SalidaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = FabricaEntidades.CrearProducto(GetInt(i, 2), GetString(i, 3), GetString(i, 4), GetString(i, 5), GetBool(i, 6));
                    cliente = FabricaEntidades.CrearCliente(GetInt(i, 0), GetString(i, 7), GetString(i, 8));
                    almacen = FabricaEntidades.CrearAlmacen(GetInt(i, 9), GetString(i, 10), GetString(i, 11));

                    SalidaARetornar = FabricaEntidades.CrearSalida(GetInt(i, 0), GetDateTime(i, 1), producto, almacen, cliente);
                    _salidas.Add(SalidaARetornar);
                }

                return _salidas;
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
