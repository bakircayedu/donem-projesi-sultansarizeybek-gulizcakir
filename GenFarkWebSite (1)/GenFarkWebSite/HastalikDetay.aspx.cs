using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;

namespace GenFarkWebSite
{

    public partial class HastalikDetay : System.Web.UI.Page
    {
        genfarkEntities db = new genfarkEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Kullanici kullanici = new Kullanici();
            //kullanici.formuGizle();
            int id = Convert.ToInt32(Request.QueryString["KHastalik_id"]);
            var blog = db.Kalıtsal_Hastalık.Where(x => x.KHastalik_id == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
            
            var blog2 = db.yorumlar.Where(x => x.KHastalik_id == id).ToList();
            Repeater2.DataSource = blog2;
            Repeater2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KHastalik_id"]);
            yorumlar y = new yorumlar();
            y.KHastalik_id = id;
            y.Yorum_ad = TextBox1.Text;
            y.Yorum_soyad = TextBox4.Text;
            y.Yorum_mail = TextBox2.Text;
            y.Yorum_icerik = TextBox3.Text;
            y.Yorum_tarih = DateTime.UtcNow;
            y.Yorum_onay = true;
            db.yorumlar.Add(y);
            db.SaveChanges();
        }
    }
}