using NLog;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Persistencia.Dao.Contrato;
using TranscomaAPI.Persistencia.Fabrica;

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Usuarios
{
    public class ComandoVerificarUsuarioCliente : Comando
    {

        Logger logger = LogManager.GetLogger("fileLogger");//logger
        private IDaoCliente _dao; //Dao
        private Entidad _respuesta; // retorna el id si existe el usuario
        private string _userName;

        public ComandoVerificarUsuarioCliente(string userName)
        {
            _userName = userName;
            _dao = FabricaDao.CrearDaoCliente();
        }

        
        public override void Ejecutar()
        {
            try
            {
                _respuesta = _dao.verificarNombreUsuarioCliente(_userName);

                //if (_respuesta.Id <= 0)
                //    throw new ExcepcionUsuarioNoExiste("El usuario no se encuentra registrado");
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
        }

        public override Entidad GetEntidad()
        {
            return _respuesta;
        }

        public override List<Entidad> GetEntidades()
        {
            throw new NotImplementedException();
        }
    }
}
