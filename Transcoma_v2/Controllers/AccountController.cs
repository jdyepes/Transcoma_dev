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
            Usuario obj = new Usuario();
            obj._rolUsuario = "Administrador";
            return View(obj);
        }

        public ActionResult IniciarSesion()
        {
            return View();
        }
    }
}