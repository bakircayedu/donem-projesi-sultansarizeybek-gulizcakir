using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
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








            var yorumlar = (from x in db.yorumlar
                            select new
                            {
                                x.Yorum_id,
                                x.Yorum_ad,
                                x.Yorum_soyad,
                                x.Yorum_mail,
                                x.KHastalik_id,
                                x.Yorum_icerik,
                                x.Kalıtsal_Hastalık.KHastalik_ad
                            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}