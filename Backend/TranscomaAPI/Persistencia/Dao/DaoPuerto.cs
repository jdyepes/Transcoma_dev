using System;
using NLog;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Persistencia.Dao.Contrato;
using System.Reflection;

namespace TranscomaAPI.Persistencia.Dao
{
    public class DaoPuerto: Dao, IDaoPuerto
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
        

        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _puertos = new List<Entidad>();
                Puerto puerto = null;

                Conectar();
                StoredProcedure("consultarTodosPuertos()");
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    puerto = FabricaEntidades.CrearPuerto();
                    puerto.Direccion = FabricaEntidades.CrearDireccion();
                    puerto.Id = GetInt(i, 0);
                    puerto.Codigo = GetString(i, 1);
                    puerto.Nombre = GetString(i, 2);
                    puerto.Direccion.Id = GetInt(i, 3);
                    puerto.Direccion.CodigoZip = GetString(i, 4);
                    puerto.Direccion.Ciudad = GetString(i, 5);
                    puerto.Direccion.Provincia = GetString(i, 6);
                    puerto.Direccion.Estado = GetString(i, 7);
                    puerto.Direccion.Pais = GetString(i, 8);

                    _puertos.Add(puerto);
                }

                return _puertos;
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

        public Entidad ConsultarPuertoporId(Entidad puerto)
        {
            try
            {
                Puerto retorno= null;
                
                Conectar();
                StoredProcedure("consultarPuertoporId(@idPuerto)");
                AgregarParametro("idPuerto", puerto.Id);
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    retorno = FabricaEntidades.CrearPuerto();
                    retorno.Direccion = FabricaEntidades.CrearDireccion();
                    retorno.Id = GetInt(i, 0);
                    retorno.Codigo = GetString(i, 1);
                    retorno.Nombre = GetString(i, 2);
                    retorno.Direccion.Id = GetInt(i, 3);
                    retorno.Direccion.CodigoZip = GetString(i, 4);
                    retorno.Direccion.Ciudad = GetString(i, 5);
                    retorno.Direccion.Provincia = GetString(i, 6);
                    retorno.Direccion.Estado = GetString(i, 7);
                    retorno.Direccion.Pais = GetString(i, 8);
                }

                return retorno;
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
