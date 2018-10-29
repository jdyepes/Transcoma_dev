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
    public class ComandoConsultarBLporCliente: Comando
    {

        private Entidad _cliente;
        private List<Entidad> _bls;
        private IDaoBL _dao;

        Logger logger = LogManager.GetLogger("fileLogger");

        public ComandoConsultarBLporCliente(Entidad cliente)
        {
            _bls = new List<Entidad>();
            _dao = FabricaDao.CrearDaoBL();
            _cliente = cliente;

        }

        public override void Ejecutar()
        {
            try
            {
                _bls = _dao.ConsultarBLporCliente(_cliente);
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
            return _cliente;
        }
        

        public override List<Entidad> GetEntidades()
        {
            return _bls;
        }
    }
}
