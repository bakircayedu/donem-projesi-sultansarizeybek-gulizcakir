using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite
{
    public partial class Öyküler : System.Web.UI.Page
    {

        genfarkEntities db = new genfarkEntities();
      

        protected void Page_Load(object sender, EventArgs e)
        {
            var öyküler = db.FarkındalıkHastalıgı.ToList();
            Repeater3.DataSource = öyküler;
            Repeater3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Int16 id = Convert.ToInt16(Request.QueryString["FHastalik_id"]);
            FarkındalıkHastalıgı o = new FarkındalıkHastalıgı();
            o.FHastalik_id = id;
            o.FHastalik_Kod = TextBox1.Text;
            o.FHastalik_Bilgi = TextBox3.Text;
            o.FHastalik_Tarih= DateTime.UtcNow;
            db.FarkındalıkHastalıgı.Add(o);
            db.SaveChanges();

        }
    }
}