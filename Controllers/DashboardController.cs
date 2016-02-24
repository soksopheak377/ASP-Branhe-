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
        public static string password = "12345";
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(FormCollection frm)
        {
            string result = "";
            string user = frm["user"].ToString();
            string pwd = frm["pwd"].ToString();
            if (username == user && pwd == password)
            {
                return View();
            }
            else
            {
                result = "Faild";
            }
            return this.RedirectToAction("Index", "Dashboard");
            
        }
    }
}
