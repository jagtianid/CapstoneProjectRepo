using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AuctionWebMVC.Areas.MVCArea.Controllers
{
    public class DementiaHackathonController : Controller
    {
        // GET: MVCforAuction/DementiaHackathon
        // GET: TorontoHackathon
        public ActionResult TorontoHackathon()
        {
            return View();
        }

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

        public ActionResult dementiaHackathon()
        {
            return View();
        }

        public ActionResult itemDonation()
        {
            return View();
        }

        public ActionResult itemDonationConfirm()
        {
            return View();
        }

        public ActionResult auction()
        {
            return View();
        }

        public ActionResult auctionConfirm()
        {
            return View();
        }
    }
}