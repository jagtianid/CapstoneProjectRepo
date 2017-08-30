using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Capstone_Project_Prototype.Controllers
{
    public class DementiaHackathonController : Controller
    {

        // GET: TorontoHackathon
        public ActionResult LogIn()
        {
            return View();
        }

        public ActionResult createAccount()
        {
            return View();
        }

        public ActionResult payment()
        {
            return View();
        }

        public ActionResult paymentConfirm()
        {
            return View();
        }


        public ActionResult itemDonation()
        {
            return Redirect("~/AddAuction.aspx");
        }

        public ActionResult itemDonationConfirm()
        {
            return View();
        }

        
        public RedirectResult auction()
        {
            return Redirect("~/Auctions.aspx");
        }
        

        public ActionResult auctionConfirm()
        {
            return View();
        }
    }
}