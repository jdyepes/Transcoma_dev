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

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    public class AduanaController : Controller
    {
        Logger logger = LogManager.GetLogger("fileLogger");

        /// <summary>
        /// Se obtiene las aduanas pasando el id del almacen
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("obtener/{id}")]
        public ActionResult ObtenerAduana(int id)
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarAduanaAlmacen(id);
                comando.Ejecutar();
                List<Entidad> aduanas = comando.GetEntidades();
                return Ok(aduanas);
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
        /// Se obtiene todas las aduanas cuando es rol Administrador
        /// </summary>
        /// </summary>
        /// <returns></returns>
        [HttpGet("obtener/")]
        public ActionResult ObtenerTodasAduana()
        {
            try
            {
                Comando comando = FabricaComando.CrearComandoConsultarTodasAduanas();
                comando.Ejecutar();
                List<Entidad> aduanas = comando.GetEntidades();
                return Ok(aduanas);
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
