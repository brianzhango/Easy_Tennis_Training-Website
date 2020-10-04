using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ETT.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        public ActionResult Admin()
        {
            ViewBag.Message = "Admin";

            return View();
        }

        [Authorize(Roles = "User")]
        public ActionResult User()
        {
            ViewBag.Message = "User";

            return View();
        }
    }
}