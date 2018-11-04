using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using NLog;
using Npgsql;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    [EnableCors("AllowAllHeaders")]///[DisableCors]
    public class PedidoController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        /// <summary>
        /// Se obtiene los pedidos de un cliente pasando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtenerPedidoCliente/{id}")]
        public ActionResult ObtenerPedido(int id)
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarPedidos(id);
                comando.Ejecutar();
                List<Entidad> pedidos = comando.GetEntidades();
                return Ok(pedidos);
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

        /// <summary>
        /// Se obtiene todas las salidas cuando es rol Administrador
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult ObtenerTodosPedidos()
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarTodosPedidos();
                comando.Ejecutar();
                List<Entidad> pedidos = comando.GetEntidades();
                return Ok(pedidos);
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
    }
}
