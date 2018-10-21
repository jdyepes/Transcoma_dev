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

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Carga
{
    public class ComandoConsultarTodosPedidos : Comando
    {
        private List<Entidad> _pedidos;
        Logger logger = LogManager.GetLogger("fileLogger");//logger
        private IDaoPedido _dao; //Dao
        private int _idUsuario;

        /// <summary>
        /// Contructor para la consulta de los pedidos de un cliente
        /// </summary>
        /// <param name="idUsuario"></param>
        public ComandoConsultarTodosPedidos()
        {
            _pedidos = new List<Entidad>();
            _dao = FabricaDao.CrearDaoPedido();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="pedido"></param>
        public ComandoConsultarTodosPedidos(Entidad pedido)
        {
            Entidad = pedido;
        }

        public override void Ejecutar()
        {
            try
            {
                _pedidos = _dao.ConsultarTodos();
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
            throw new NotImplementedException();
        }

        /// <summary>
        /// Metodo que retorna una lista de tipo Entidad de la respuesta del metodo ejecutar().
        /// </summary>
        /// <returns>Una lista de tipo Entidad</returns>
        public override List<Entidad> GetEntidades()
        {
            return _pedidos;
        }
    }
}
