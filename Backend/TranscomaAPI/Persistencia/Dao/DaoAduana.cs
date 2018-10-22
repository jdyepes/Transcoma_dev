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
    public class DaoAduana : Dao, IDaoAduana
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

        public List<Entidad> ConsultarAduanaPorAlmacen(int idAlmacen)
        {
            try
            {
                List<Entidad> _aduanas = new List<Entidad>();
                Almacen almacen;
                Aduana aduanaARetornar = null;

                Conectar();
                StoredProcedure("consultarAduana(@id)");
                AgregarParametro("id", idAlmacen);
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    almacen = new Almacen(GetInt(i, 3), GetString(i, 4), GetString(i, 5));
                    aduanaARetornar = FabricaEntidades.CrearAduana(GetInt(i, 0), GetString(i, 1), GetString(i, 2), almacen);
                    _aduanas.Add(aduanaARetornar);
                }

                return _aduanas;
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
        /// Consulta todas las aduanas
        /// </summary>
        /// <returns></returns>
        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _aduanas = new List<Entidad>();               
                Aduana aduanaARetornar = null;

                Conectar();
                StoredProcedure("consultarTodasAduana()");
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {                   
                    aduanaARetornar = FabricaEntidades.CrearAduana(GetInt(i, 0), GetString(i, 1), GetString(i, 2));
                    _aduanas.Add(aduanaARetornar);
                }

                return _aduanas;
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
