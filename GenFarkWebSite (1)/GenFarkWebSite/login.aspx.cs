using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite
{
    public partial class login : System.Web.UI.Page
    {
        genfarkEntities db = new genfarkEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            var sorgu = from x in db.Admin
                        where
  x.Yonetici_ad== TextBox1.Text && x.Yonetici_sifre == TextBox2.Text
                        select x;
            if (sorgu.Any())
            {
                Session.Add("Yonetici_ad", TextBox1.Text);
                Response.Redirect("/AdminSayfalar/HastaliklarBlog.Aspx");
                
            }
            else
            {
                Response.Write("Hata");
            }

            
        }
    }
}