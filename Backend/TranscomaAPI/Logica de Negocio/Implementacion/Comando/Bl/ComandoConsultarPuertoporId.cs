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

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Bl
{
    public class ComandoConsultarPuertoporId: Comando
    {
        private Entidad _puerto;
        private IDaoPuerto _dao;
        
        Logger logger = LogManager.GetLogger("fileLogger");

        public ComandoConsultarPuertoporId(Entidad puerto)
        {
            _dao = FabricaDao.CrearDaoPuerto();
            _puerto = puerto;

        }

        public override void Ejecutar()
        {
            try
            {
                _puerto = _dao.ConsultarPuertoporId(_puerto);
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
            return _puerto;
        }


        public override List<Entidad> GetEntidades()
        {
            throw new NotImplementedException();
        }
    }
}

/*
namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.BL
{
    public class ComandoConsultarBLporCliente: Comando
    {

        
    }
}

 */
