using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    public class FeaturedController : Controller
    {
        IFirebaseConfig config = new FireSharp.Config.FirebaseConfig
        {
            AuthSecret = "KEvOVZ7YYzeJfy2mFzA3Z2JxMhXQBkjyc1Z7RDuz",
            BasePath = "https://spotout-35ac6.firebaseio.com/"
        };
        IFirebaseClient client;
        // GET: Featured
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Basic()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Pro()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Enterprise()
        {
            return View();
        }

        private void AddFeaturedToFirebase(FeaturedBusiness featuredBusiness)
        {
            Users users = Session["vendorData"] as Users;
            featuredBusiness.phoneNo = users.phoneNo;
            client = new FireSharp.FirebaseClient(config);
            PushResponse response = client.Push("Featured/", featuredBusiness);
            featuredBusiness.featureID = response.Result.name;
            SetResponse setResponse = client.Set("Featured/" + featuredBusiness.featureID, featuredBusiness);
        }
    }
}