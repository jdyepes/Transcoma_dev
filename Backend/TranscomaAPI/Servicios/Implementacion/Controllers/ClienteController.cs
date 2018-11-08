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
    public class ClienteController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        /// <summary>
        /// Se obtiene los clientes de un administrador indicando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtenerClientesAdmin/{id}")]
        public ActionResult ObtenerClientes(int id)
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarClientes(id);
                comando.Ejecutar();
                List<Entidad> clientes = comando.GetEntidades();
                return Ok(clientes);
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
        /// Verificar si existe el Administrador mediante su nombre de usuario
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("verificarCliente/{userName}")]
        public ActionResult verificarUsuarioCliente(string userName)
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoVerificarUsuarioCliente(userName);
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
