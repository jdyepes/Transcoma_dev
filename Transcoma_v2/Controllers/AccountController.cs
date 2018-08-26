using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Transcoma.Models.Account;

namespace Transcoma_v2.Controllers
{
    public class AccountController : Controller
    {
        public ActionResult RegistrarUsuario()
        {
            //Usuario obj = new Usuario();
            ////  obj._rolUsuario = "Administrador";
            //obj._nombreUsuario = Request.Form["usuario"].ToString();
            //obj._rolUsuario = Request.Form["roles"].ToString();
            //obj._organizacion = Request.Form["organizacion"].ToString();
            //obj._correo = Request.Form["correo"].ToString();
            //obj._password = Request.Form["password"].ToString();
            return View();
        }

        public ActionResult IniciarSesion()
        {
            Usuario obj = new Usuario();
            //  obj._rolUsuario = "Administrador";
            obj._nombreUsuario = Request.Form["usuario"].ToString();
            obj._rolUsuario = Request.Form["roles"].ToString();
            obj._organizacion = Request.Form["organizacion"].ToString();
            obj._correo = Request.Form["correo"].ToString();
            obj._password = Request.Form["password"].ToString();
            return View(obj);
          //  return View();
        }
    }
}