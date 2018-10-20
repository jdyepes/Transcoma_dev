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
        /// Consulta las entradas por su id
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public Entidad ConsultarEntradaPorId(Entidad entidad)
        {
            try
            {
                Entrada entrada = (Entrada)entidad;
                List<Entidad> _entradas = new List<Entidad>();
                Conectar();
                StoredProcedure("--- nombre del sp---");
                AgregarParametro("id", entrada.Id);
                EjecutarReader();
                Entrada entradaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    entradaARetornar = FabricaEntidades.CrearEntrada(GetInt(i, 0), GetDateTime(i,1));                   
                }

                return entradaARetornar;
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
        /// Consulta las entradas de un usuario especificando su id
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public List<Entidad> ConsultarEntradaPorUsuario(Entidad entidad)
        {
            try
            {
                Entrada entrada = (Entrada)entidad;
                List<Entidad> _entradas = new List<Entidad>();
                Conectar();
                StoredProcedure("consultarEntradasCliente(@id)");
                // AgregarParametro("id", entrada.Id);
                AgregarParametro("id", 2);
                EjecutarReader();
                Entrada entradaARetornar = null;
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    entradaARetornar = FabricaEntidades.CrearEntrada(GetInt(i, 0), GetDateTime(i, 1));
                   // entradaARetornar.FechaEntrada = GetDateTime()
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

        public List<Entidad> ConsultarTodos()
        {
            throw new NotImplementedException();
        }

        public void Eliminar(Entidad entidad)
        {
            throw new NotImplementedException();
        }
    }

}
