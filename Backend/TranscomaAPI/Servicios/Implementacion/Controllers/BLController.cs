using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using Microsoft.AspNetCore.Mvc;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica;
using Microsoft.AspNetCore.Cors;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TranscomaAPI.Servicios.Implementacion.Controllers
{
    [Route("api/[controller]")]
    [EnableCors("AllowAllHeaders")]///[DisableCors]
    public class BLController : Controller
    {  
       
       
        [HttpGet("ObtenerBLsCliente/{id}")]
        public ActionResult<List<Comun.Entidades.Entidad>> ObtenerBLCliente(int id)
        {
            Entidad cliente = FabricaEntidades.CrearCliente();
            cliente.Id = id;
            //Comando comando = FabricaComando.CrearComandoConsultarBLporCliente(cliente);
            Comando comando = FabricaComando.CrearComandoObtenerBLsCLiente(cliente);
            comando.Ejecutar();
            List<Entidad> bls = comando.GetEntidades();
            return bls;
        }

        
    }
}
