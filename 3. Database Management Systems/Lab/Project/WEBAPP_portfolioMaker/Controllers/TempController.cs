using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEBAPP_portfolioMaker.Models;

namespace WEBAPP_portfolioMaker.Controllers
{
    public class TempController : Controller
    {
        // GET: Temp
        public ActionResult Index()
        {
            var db = new Portfolio_makerEntities();
            var data = db.Get_WebVeiw();
            return View(data.ToList());
        }

        // GET: Temp/Details/5
        public ActionResult Details(string id)
        {

            var db = new Portfolio_makerEntities();
            SqlParameter param1 = new SqlParameter("@id", id);

            var data = db.Database.SqlQuery<WebView>("exec Get_WebVeiw_DetailsID @id", param1).SingleOrDefault();


            return View(data);
        }

        // GET: Temp/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Temp/Create
        [HttpPost]
        public ActionResult Create(FormCollection WebView)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Temp/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Temp/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Temp/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Temp/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
