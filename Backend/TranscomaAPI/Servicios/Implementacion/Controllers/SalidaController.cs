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
    public class SalidaController : Controller
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
        /// Se obtiene las salidas de un cliente pasando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtener/{id}")]
        public ActionResult<List<Comun.Entidades.Entidad>> ObtenerSalida(int id)
        {
            Comando comando = FabricaComando.CrearComandoConsultarSalidas(id);
            comando.Ejecutar();
            List<Entidad> salidas = comando.GetEntidades();
            return salidas;
        }

        /// <summary>
        /// Se obtiene todas las salidas cuando es rol Administrador
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult<List<Entidad>> ObtenerTodasSalida()
        {
            Comando comando = FabricaComando.CrearComandoConsultarTodasSalidas();
            comando.Ejecutar();
            List<Entidad> salidas = comando.GetEntidades();
            return salidas;
        }
    }
}
