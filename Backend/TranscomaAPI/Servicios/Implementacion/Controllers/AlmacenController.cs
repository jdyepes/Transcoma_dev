using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;
using System.Net.Http;
using System.Net;
using TranscomaAPI.Comun.Excepciones;
using NLog;
using Npgsql;
using System.Reflection;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion
{
    [Route("api/[controller]")]
    public class AlmacenController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        /// <summary>
        /// Se obtiene todas las almacenes cuando es rol Administrador
        /// </summary>
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult ObtenerAlmacenes()
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarTodasAduanas();
                comando.Ejecutar();
                List<Entidad> almacenes = comando.GetEntidades();
                return Ok(almacenes);
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
