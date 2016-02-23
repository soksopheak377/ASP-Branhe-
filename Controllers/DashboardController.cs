using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Restaurants.Controllers
{
    public class DashboardController : Controller
    {
        //
        // GET: /Dashboard/
        public static string username="dara";
        public static string pass_word = "12345";
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(string user_name, string password)
        {
            if (user_name == username && password == pass_word)
            {
                return View();
            }
        }
    }
}
