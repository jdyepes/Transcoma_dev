using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    public class PedidoController : Controller
    {
        // GET: api/<controller>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        /// <summary>
        /// Se obtiene los pedidos de un cliente pasando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtener/{id}")]
        public ActionResult<List<Comun.Entidades.Entidad>> ObtenerPedido(int id)
        {
            Comando comando = FabricaComando.CrearComandoConsultarPedidos(id);
            comando.Ejecutar();
            List<Entidad> pedidos = comando.GetEntidades();
            return pedidos;
        }

        /// <summary>
        /// Se obtiene todas las salidas cuando es rol Administrador
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult<List<Entidad>> ObtenerTodosPedidos()
        {
            Comando comando = FabricaComando.CrearComandoConsultarTodosPedidos();
            comando.Ejecutar();
            List<Entidad> pedidos = comando.GetEntidades();
            return pedidos;
        }
    }
}
