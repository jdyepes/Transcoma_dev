using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;
using Microsoft.AspNetCore.Cors;
using TranscomaAPI.Comun.Excepciones;
using NLog;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    [EnableCors("AllowAllHeaders")]
    public class PuertoController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        [HttpGet("ObtenerPuertos")]
        public ActionResult<List<Comun.Entidades.Entidad>> ObtenerPuertos()
        {
            try
            {
                
                Comando comando = FabricaComando.CrearComandoConsultarTodosPuertos();
                comando.Ejecutar();
                List<Entidad> puertos = comando.GetEntidades();
                
                return puertos;
            } 
            catch(LogicaException e)
            {
                logger.Error(e, e.Message);
                return BadRequest(e);
            }
            catch(Exception e)
            {
                logger.Error(e, e.Message);
                return BadRequest(e);
            }
           
        }

        
    }
}
