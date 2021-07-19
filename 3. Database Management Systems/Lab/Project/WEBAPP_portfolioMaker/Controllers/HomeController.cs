using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEBAPP_portfolioMaker.Models;


namespace WEBAPP_portfolioMaker.Controllers
{


    public class HomeController : Controller
    {
    private Portfolio_makerEntities db = new Portfolio_makerEntities();
        public ActionResult Index(string Search)
        {


            if (Search != null)
            {

                SqlParameter param1 = new SqlParameter("@Tab", "_WEB_Search where Name like '" + Search + "' ");
                var Db_data = db.Database.SqlQuery<C_WEB_Search>("Exec PN_SELECT_GOBAL @Tab", param1);

                //var Db_data = db.Main_WEB_Search.Where(modal => modal.Name.StartsWith("Ahmed")).FirstOrDefault();
                return View(Db_data.ToList());
            }
            else
            {
                SqlParameter param1 = new SqlParameter("@Tab", "_WEB_Search");
                var Db_data = db.Database.SqlQuery<C_WEB_Search>("Exec PN_SELECT_GOBAL @Tab", param1);
                return View(Db_data.ToList());
            }
        }

        // GET: Temp/Edit/5
        public ActionResult VeiwTOGO(string id){

            SqlParameter param1 = new SqlParameter("@Tab", "Admin_WEB_Search");
            var Db_data = db.Database.SqlQuery<C_WEB_Search>("Exec PN_SELECT_GOBAL @Tab", param1);
            return View();
        }
    }
}
        // POST: Temp/Edit/5
        