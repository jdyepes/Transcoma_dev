using NLog;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Persistencia.Dao.Contrato;

namespace TranscomaAPI.Persistencia.Dao
{
    public class DaoAlmacen : Dao, IDaoAlmacen
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

        public List<Entidad> ConsultarAlmacenes()
        {
            throw new NotImplementedException();
        }

        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _almacenes = new List<Entidad>();
                Almacen almacenARetornar = null;

                Conectar();
                StoredProcedure("consultarTodosAlmacenes()");
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    almacenARetornar = FabricaEntidades.CrearAlmacen(GetInt(i, 0), GetString(i, 1), GetString(i, 2));
                    _almacenes.Add(almacenARetornar);
                }

                return _almacenes;
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
