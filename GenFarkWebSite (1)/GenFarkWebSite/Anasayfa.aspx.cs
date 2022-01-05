using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        genfarkEntities db =   new genfarkEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var hastalıklar = db.Kategoriler.ToList();
            Repeater1.DataSource = hastalıklar;
            Repeater1.DataBind();

            var hastalıklar2 = db.yorumlar.Take(2).ToList();
            Repeater2.DataSource = hastalıklar2;
            Repeater2.DataBind();

            var öyküler = db.FarkındalıkHastalıgı.Take(2).ToList();
            Repeater3.DataSource = öyküler;
            Repeater3.DataBind();



        }
    }
}