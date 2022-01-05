using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class Öykü : System.Web.UI.Page
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






            var öyküler = (from y in db.FarkındalıkHastalıgı
                            select new
                            {
                                y.FHastalik_id,
                                y.FHastalik_Kod,
                                y.FHastalik_Bilgi,
                                y.FHastalik_Tarih
                            }).ToList();
            Repeater5.DataSource = öyküler;
            Repeater5.DataBind();

        }
    }
}