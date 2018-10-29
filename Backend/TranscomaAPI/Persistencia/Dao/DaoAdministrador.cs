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
    public class DaoAdministrador : Dao, IDaoAdministrador
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
            throw new NotImplementedException();
        }

        public void Eliminar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public Entidad verificarNombreUsuarioAdministrador(string userName)
        {
            try
            {
                Administrador administrador;
                int _resultado;
                Conectar();
                StoredProcedure("verificarCorreoAdministrador(@nombreUsuario)");
                AgregarParametro("nombreUsuario", userName);
                EjecutarReader();

                _resultado = GetInt(0, 0);
                administrador = FabricaEntidades.CrearAdministrador(_resultado,GetString(0,1), GetString(0,2), GetString(0, 3), GetString(0, 4), GetDateTime(0, 5));

                return administrador;
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
    }
}
