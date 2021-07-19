using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WEBAPP_portfolioMaker.Models;

namespace WEBAPP_portfolioMaker.Controllers
{
    public class WebDisplayController : Controller
    {   
        private Portfolio_makerEntities db = new Portfolio_makerEntities();

        // GET: WebDisplay
        public ActionResult Index(){
            return View(db.Get_WebVeiw().ToList());
        }

        // GET: WebDisplay/Details/5
        public ActionResult Details(string id)
        {

            SqlParameter param1 = new SqlParameter("@id", "WebView where Uid = '" + id + "' ");

            /*SqlParameter param1 = new SqlParameter("@Tab", "WebView where Uid = '" + id + "' ");
            var Db_data = db.Database.SqlQuery<Main_WEB_Search>("Exec PN_SELECT_GOBAL @Tab", param1);
*/
            var data = db.Database.SqlQuery<WebView>("Exec PN_SELECT_GOBAL @id", param1).SingleOrDefault();
            return View(data);
        }
    }
}
