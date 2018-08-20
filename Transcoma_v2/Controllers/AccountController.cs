using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Transcoma_v2.Controllers
{
    public class AccountController : Controller
    {
        public ActionResult RegistrarUsuario()
        {
            return View();
        }

        public ActionResult IniciarSesion()
        {
            return View();
        }
    }
}