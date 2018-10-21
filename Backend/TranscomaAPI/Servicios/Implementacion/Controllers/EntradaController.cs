using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using NLog;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EntradaController : ControllerBase
    {
        Logger logger = LogManager.GetLogger("fileLogger");

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
        /// Se obtiene las entradas de un cliente pasando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtener/{id}")]
        public ActionResult<List<Entidad>> ObtenerEntrada(int id)
        {
            Comando comando = FabricaComando.CrearComandoConsultarEntradas(id);
            comando.Ejecutar();
            List<Entidad> entradas = comando.GetEntidades();
            return entradas;
        }

        /// <summary>
        /// Se obtiene todas las entradas cuando es rol Administrador
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult<List<Entidad>> ObtenerTodasEntrada()
        {
            Comando comando = FabricaComando.CrearComandoConsultarTodasEntradas();
            comando.Ejecutar();
            List<Entidad> entradas = comando.GetEntidades();
            return entradas;
        }
    }
}
