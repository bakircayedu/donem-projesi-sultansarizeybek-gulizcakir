using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class ÖyküGüncelle : System.Web.UI.Page
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











            int y = int.Parse(Request.QueryString["FHastalik_id"]);
            if (Page.IsPostBack == false)
            {

                var deger = db.FarkındalıkHastalıgı.Find(y);
                TextBox1.Text = deger.FHastalik_Kod;
                TextBox6.Text = deger.FHastalik_Tarih.ToString();
                TextBox4.Text = deger.FHastalik_Bilgi;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["FHastalik_id"]);
            var öykü = db.FarkındalıkHastalıgı.Find(y);
            öykü.FHastalik_Bilgi = TextBox4.Text;
            db.SaveChanges();
            Response.Redirect("Öykü.aspx");
        }
    }
}