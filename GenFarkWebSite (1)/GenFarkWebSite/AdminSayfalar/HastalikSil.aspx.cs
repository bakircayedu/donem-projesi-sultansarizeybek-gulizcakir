using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class HastalikSil : System.Web.UI.Page
    {
        genfarkEntities db =  new genfarkEntities();
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






            int x = Convert.ToInt32(Request.QueryString["KHastalik_id"]);
            var hastalıklar = db.Kalıtsal_Hastalık.Find(x);
            db.Kalıtsal_Hastalık.Remove(hastalıklar);
            db.SaveChanges();
            Response.Redirect("HastaliklarBlog.aspx");
        }
    }
}