using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    public class UserController : Controller
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "KEvOVZ7YYzeJfy2mFzA3Z2JxMhXQBkjyc1Z7RDuz",
            BasePath = "https://spotout-35ac6.firebaseio.com/"
        };
        IFirebaseClient client;
        // GET: User
        public ActionResult Index()
        {
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse response = client.Get("Users");
            dynamic data = JsonConvert.DeserializeObject<dynamic>(response.Body);
            var list = new List<Users>();
            foreach(var item in data)
            {
                list.Add(JsonConvert.DeserializeObject<Users>(((JProperty)item).Value.ToString()));
            }
            return View(list);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Users users)
        {
            try
            {
                AddUserToFirebase(users);
                ModelState.AddModelError(string.Empty,"Added Successfully");
            }
            catch(Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
            }
            
            return View();
        }

        private void AddUserToFirebase(Users users)
        {
            client = new FireSharp.FirebaseClient(config);
            var data = users;
            PushResponse response = client.Push("Users/",data);
            data.phoneNo = response.Result.name;
            SetResponse setResponse = client.Set("Users/" + data.phoneNo, data);
        }
        [HttpGet]
        public ActionResult Accept(string phoneNo)
        {
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse response = client.Get("Users/"+phoneNo);
            Users data = JsonConvert.DeserializeObject<Users>(response.Body);
            var email = data.email;
            
            return View(data);
            
        }

        [HttpGet]
        public ActionResult setPassword(string phoneNo)
        {
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse response = client.Get("Users/" + phoneNo);
            Users data = JsonConvert.DeserializeObject<Users>(response.Body);
            TempData["doc"] = data;
            return View(data);
        }
        [HttpPost]
        public ActionResult setPassword(Users users)
        {
            Users s = TempData["doc"] as Users;
            s.password = users.password;
            client = new FireSharp.FirebaseClient(config);
            SetResponse response = client.Set("Users/" + s.phoneNo, s);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult SendEmail(string id)
        {
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse response = client.Get("Users/" + id);
            Users data = JsonConvert.DeserializeObject<Users>(response.Body);
          
            
            ////MailMessage mm = new MailMessage("pixusspotout@gmail.com", gmail.To);
            ////mm.Subject = gmail.Subject;
            ////mm.Body = gmail.Body;
            ////mm.IsBodyHtml = false;

            ////SmtpClient smtp = new SmtpClient();
            ////smtp.Host = "smtp.gmail.com";
            ////smtp.Port = 587;
            ////smtp.EnableSsl = true;
            ////NetworkCredential nc = new NetworkCredential("pixusspotout@gmail.com", "pixusspotout2.");
            ////smtp.UseDefaultCredentials = true;
            ////smtp.Credentials = nc;
            ////smtp.Send(mm);
            ////ViewBag.Message = "Mail has been sent Successfully";
            ////return View();
            try
            {
               if (ModelState.IsValid)
                {
                    var senderEmail = new MailAddress("pixusspotout@gmail.com", "SpotOut");
                    var receiverEmail = new MailAddress(data.email, data.name);
                    var password = "pixusspotout2.";
                    var sub = "Confirmation Email for Shop";
                    var Body = string.Format("<div class='w-100' style='text-align:-webkit-center;'><img src='' width='300'></div><hr style='border-bottom:1px solid #eee!important;'/><h2>SpotOut Portal Information</h2><br><h3>Your Email and Password for portal<h3><br><h3>Email Address:<h3>{0} <br>We'll always let you know when there is any activity on your account. This helps keep your account safe.<br>If you didn't make this request Contact Us</a> Thanks<br>Password: {1}", data.email,data.password);  //"Your activation code is " + addnew.ActivationCode.ToString();

                    var smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential("pixusspotout@gmail.com", password)
                    };
                    using (var mess = new MailMessage(senderEmail, receiverEmail)
                    {
                        Subject = sub,
                        Body = Body,
                        IsBodyHtml = true
                    })
                    {
                        smtp.Send(mess);
                    }
                    return RedirectToAction("Index", "User");
                }
            }
            catch (Exception)
            {
                ViewBag.Error = "Some Error";
            }
            return RedirectToAction("Index", "User");
        }


    }

}