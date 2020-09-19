using Firebase.Auth;
using Firebase.Storage;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    public class VendorController : Controller
    {
        public static string Bucket = "spotout-35ac6.appspot.com";
        public static string authSecret = "KEvOVZ7YYzeJfy2mFzA3Z2JxMhXQBkjyc1Z7RDuz";        
        IFirebaseConfig config = new FireSharp.Config.FirebaseConfig
        {
            AuthSecret = "KEvOVZ7YYzeJfy2mFzA3Z2JxMhXQBkjyc1Z7RDuz",
            BasePath = "https://spotout-35ac6.firebaseio.com/"
        };
        IFirebaseClient client;
        // GET: Vendor
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Create(VendorProducts vendorProducts, HttpPostedFileBase file)
        {
            FileStream stream;
            
            try
            {
                if (file.ContentLength > 0)
                {
                    string path = Path.Combine(Server.MapPath("~/Content/images/"), file.FileName);
                    file.SaveAs(path);
                    stream = new FileStream(Path.Combine(path), FileMode.Open);
                    await Task.Run(() => fileUpload(stream, file.FileName));
                    vendorProducts.productimageName = file.FileName; 
                }
                AddUserToFirebase(vendorProducts);
                ModelState.AddModelError(string.Empty, "Added Successfully");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
            }

            return View();
        }

        private void AddUserToFirebase(VendorProducts vendorProducts)
        {
            Users users = Session["vendorData"] as Users;
            vendorProducts.phoneNo = users.phoneNo;
            client = new FireSharp.FirebaseClient(config);            
            PushResponse response = client.Push("Products/", vendorProducts);
            vendorProducts.id = response.Result.name;
            SetResponse setResponse = client.Set("Products/" + vendorProducts.id, vendorProducts);
        }

        //[HttpGet]
        //public ActionResult File()
        //{
            
        //    return View();
        //}

        //[HttpPost]
        //public async Task<ActionResult> File(Image image,HttpPostedFileBase file)
        //{
        //    FileStream stream;
        //    if (file.ContentLength > 0)
        //    {
        //        string path = Path.Combine(Server.MapPath("~/Content/images/"), file.FileName);
        //        file.SaveAs(path);
        //        stream = new FileStream(Path.Combine(path), FileMode.Open);
        //        await Task.Run(() => fileUpload(stream, file.FileName));

        //    }
        //        return View();
        //}

        public async void fileUpload(FileStream stream,string fileName)
        {
            //Users users = Session["vendorData"] as Users;
            var cancellation = new CancellationTokenSource();

            var task = new FirebaseStorage(
                Bucket,
                new FirebaseStorageOptions
                {
                    AuthTokenAsyncFactory = () => Task.FromResult(authSecret),
                    ThrowOnCancel = true // when you cancel the upload, exception is thrown. By default no exception is thrown
                })
                .Child("images")
                .Child(fileName)               
                .PutAsync(stream, cancellation.Token);

            try
            {
                string link = await task;
            }
            catch(Exception ex)
            {
                Console.WriteLine("Exception was Thrown: {0}", ex);
            }           
        }
        [HttpGet]
        public ActionResult Featured()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Featured(FeaturedBusiness featuredBusiness)
        {
            //try
            //{
            //    AddFeaturedToFirebase(featuredBusiness);
            //    ModelState.AddModelError(string.Empty, "Added Successfully");
            //}
            //catch (Exception ex)
            //{
            //    ModelState.AddModelError(string.Empty, ex.Message);
            //}

            return RedirectToAction("Index", "Featured");
            
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