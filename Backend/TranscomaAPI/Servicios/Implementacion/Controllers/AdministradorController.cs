using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
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
    public class AdministradorController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        /// <summary>
        /// Verificar si existe el Administrador mediante su nombre de usuario
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("verificarAdministrador/{userName}")]
        public ActionResult verificarUsuarioAdministrador(string userName)
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoVerificarUsuarioAdministrador(userName);
                comando.Ejecutar();
                Entidad respuesta = comando.GetEntidad();
                
                return Ok(respuesta);
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
        /// Se obtiene todos los Administradores
        /// </summary>
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult ObtenerAdministrador()
        {
            return Ok();
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
