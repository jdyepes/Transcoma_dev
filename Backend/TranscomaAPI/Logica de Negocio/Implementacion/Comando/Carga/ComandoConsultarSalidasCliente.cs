using NLog;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Persistencia.Dao;
using TranscomaAPI.Persistencia.Dao.Contrato;
using TranscomaAPI.Persistencia.Fabrica;

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Carga
{
    public class ComandoConsultarSalidasCliente : Comando
    {
        private List<Entidad> _salidas;
        Logger logger = LogManager.GetLogger("fileLogger");//logger
        private IDaoSalida _dao; //Dao
        private int _idUsuario;

        public ComandoConsultarSalidasCliente(int idUsuario)
        {
            _salidas = new List<Entidad>();
            _dao = FabricaDao.CrearDaoSalida();
            _idUsuario = idUsuario;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entradas"></param>
        public ComandoConsultarSalidasCliente(Entidad salida)
        {
            Entidad = salida;
        }

        /// <summary>
        /// Metodo que ejecuta la accion del comando
        /// </summary>
        public override void Ejecutar()
        {
            try
            {
                _salidas = _dao.ConsultarSalidaPorUsuario(_idUsuario);
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
            return Entidad;
        }

        public override List<Entidad> GetEntidades()
        {
            return _salidas;
        }
    }
}
