using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    public class AduanaController : Controller
    {  
        /// <summary>
        /// Se obtiene las aduanas pasando el id del almacen
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtener/{id}")]
        public ActionResult<List<Comun.Entidades.Entidad>> ObtenerAduana(int id)
        {
            Comando comando = FabricaComando.CrearComandoConsultarAduanaAlmacen(id);
            comando.Ejecutar();
            List<Entidad> aduanas = comando.GetEntidades();
            return aduanas;
        }

        /// <summary>
        /// Se obtiene todas las aduanas cuando es rol Administrador
        /// </summary>
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult<List<Entidad>> ObtenerTodasAduana()
        {
            Comando comando = FabricaComando.CrearComandoConsultarTodasAduanas();
            comando.Ejecutar();
            List<Entidad> aduanas = comando.GetEntidades();
            return aduanas;
        }
    }
}
