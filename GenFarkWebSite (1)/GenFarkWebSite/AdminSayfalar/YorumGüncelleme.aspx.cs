using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite.AdminSayfalar
{
    public partial class YorumGüncelleme : System.Web.UI.Page
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














            int y = int.Parse(Request.QueryString["Yorum_id"]);
            if (Page.IsPostBack == false)
            {
                
                var deger = db.yorumlar.Find(y);
                TextBox3.Text = deger.Kalıtsal_Hastalık.KHastalik_ad;
                TextBox1.Text = deger.Yorum_ad;
                TextBox5.Text = deger.Yorum_soyad;
                TextBox6.Text = deger.Yorum_mail;
                TextBox2.Text = deger.Yorum_tarih.ToString();
                TextBox4.Text = deger.Yorum_icerik;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["Yorum_id"]);
            var yorum = db.yorumlar.Find(y);
            yorum.Kalıtsal_Hastalık.KHastalik_ad = TextBox3.Text;
            yorum.Yorum_icerik = TextBox4.Text;
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}