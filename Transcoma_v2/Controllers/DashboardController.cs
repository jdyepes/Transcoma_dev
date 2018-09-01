using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Transcoma.Models.Account;

namespace Transcoma_v2.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Menu()
        {
            try
            {
                Usuario obj = new Usuario();
                String rol = "";
                //  obj._rolUsuario = "Administrador";
                obj._nombreUsuario = Request.Form["usuario"].ToString();
                obj._rolUsuario = Request.Form["roles"].ToString();
                obj._organizacion = Request.Form["organizacion"].ToString();
                obj._correo = Request.Form["correo"].ToString();
                obj._password = Request.Form["password"].ToString();
                rol = obj._rolUsuario;

                switch (rol)
                {
                    case "1":
                        obj._rolUsuario = "Debe seleccionar un rol";
                        break;
                    case "2":
                        obj._rolUsuario = "Administrador";
                        break;
                    //goto case 1;
                    case "3":
                        obj._rolUsuario = "Usuario";
                        // goto case 1;
                        break;

                }
                return View(obj);
                //return View();
            }
            catch (InvalidOperationException e)
            {
                return View("No se pudo procesar la solicitud, no puede haber campos vacios. La excepcion es: "+e);

            }
            catch (Exception e)
            {
                return View(e);

            }
        }
    }
}