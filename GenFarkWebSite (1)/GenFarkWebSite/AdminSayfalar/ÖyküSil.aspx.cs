using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class ÖyküSil : System.Web.UI.Page
    {
        genfarkEntities db = new genfarkEntities();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Yonetici_ad"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: " + Session["Yonetici_ad"].ToString());
            }

            int a = Convert.ToInt32(Request.QueryString["FHastalik_id"]);
            var öyküler = db.FarkındalıkHastalıgı.Find(a);
            db.FarkındalıkHastalıgı.Remove(öyküler);
            db.SaveChanges();
            Response.Redirect("Öykü.aspx");
        }
    }
}