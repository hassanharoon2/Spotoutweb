using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    public class LoginController : Controller
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "KEvOVZ7YYzeJfy2mFzA3Z2JxMhXQBkjyc1Z7RDuz",
            BasePath = "https://spotout-35ac6.firebaseio.com/"
        };
        IFirebaseClient client;
        // GET: Login
        [HttpGet]
        public ActionResult LoginForm()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LoginForm(AdminLogin adminLogin)
        {
            string userName = adminLogin.userName;
            string password = adminLogin.password;
            
            if(userName=="Admin" && password=="admin")
            {
                return RedirectToAction("Index","User");
            }
            else
            {
                ViewBag.Message = "Login Failed";
            }
            return View();
        }

        [HttpGet]
        public ActionResult VendorLogin()
        {
            return View();
        }

        [HttpPost]
        public ActionResult VendorLogin(VendorLogin vendorLogin)
        {
            string userName = vendorLogin.email.Trim();
            string password = vendorLogin.password.Trim();
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse response = client.Get("Users");
            dynamic data = JsonConvert.DeserializeObject<dynamic>(response.Body);
            List<Users> list = new List<Users>();
            foreach (var item in data)
            {
                list.Add(JsonConvert.DeserializeObject<Users>(((JProperty)item).Value.ToString()));
            }

            Users vendor = list.Find(x => x.email == userName && x.password == password);

            //for(int i = 0; i<=list.Count;i++)
            //{

            //}

            if (vendor != null)
            {
                Session["vendorData"] = vendor;
                
                return RedirectToAction("Create", "Vendor");
            }
            else
            {
                ViewBag.Message = "Login Failed";
            }
            return View();
        }
    }
}