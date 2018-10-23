using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion
{
    [Route("api/[controller]")]
    public class AlmacenController : Controller
    {      
     
        /// <summary>
        /// Se obtiene todas las almacenes cuando es rol Administrador
        /// </summary>
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult<List<Entidad>> ObtenerAlmacenes()
        {
            Comando comando = FabricaComando.CrearComandoConsultarTodasAduanas();
            comando.Ejecutar();
            List<Entidad> almacenes = comando.GetEntidades();
            return almacenes;
        }
    }
}
