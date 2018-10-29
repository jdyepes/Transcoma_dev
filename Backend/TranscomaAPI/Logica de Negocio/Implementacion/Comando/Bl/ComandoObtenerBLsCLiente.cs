using NLog;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;
using TranscomaAPI.Persistencia.Dao.Contrato;
using TranscomaAPI.Persistencia.Fabrica;
namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Bl
{
    public class ComandoObtenerBLsCLiente: Comando
    {
        
            private Entidad _cliente;
            private Entidad _bl;
            private Comando _comando;
            private List<Entidad> _bls;
            private IDaoBL _daoBL;
            private IDaoPuerto _daoPuerto;
         
            Logger logger = LogManager.GetLogger("fileLogger");

            public ComandoObtenerBLsCLiente(Entidad cliente)
            {
                _bls = new List<Entidad>();
                //_daoBL = FabricaDao.CrearDaoBL();
                //_daoPuerto = FabricaDao.CrearDaoPuerto();
                _cliente = cliente;

            }

            public override void Ejecutar()
            {
                List<Entidad> bls = new List<Entidad>();
                try
                {
                    _comando = FabricaComando.CrearComandoConsultarBLporCliente(_cliente);
                    _comando.Ejecutar();
                    bls = _comando.GetEntidades();
                    foreach(BL bl in bls)
                    {
                        _comando = FabricaComando.CrearComandoConsultarPuertoporId((bl.Pol));
                        _comando.Ejecutar();
                        bl.Pol= (Puerto) _comando.GetEntidad();
                        _comando = FabricaComando.CrearComandoConsultarPuertoporId((bl.Pod));
                        _comando.Ejecutar();
                        bl.Pod = (Puerto)_comando.GetEntidad();
                    _bls.Add(bl);
                    }
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
/*
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

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.BL
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
*/
