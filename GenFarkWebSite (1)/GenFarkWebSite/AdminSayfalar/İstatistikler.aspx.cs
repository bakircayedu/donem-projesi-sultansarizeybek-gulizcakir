using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class İstatistikler : System.Web.UI.Page
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


            Label1.Text = db.Kalıtsal_Hastalık.Count().ToString();
            Label2.Text = db.yorumlar.Count().ToString();
            Label4.Text = db.Kategoriler.Count().ToString();
            Label6.Text=db.Kategoriler.Where(x => x.Kategori_id == 7).Count().ToString();
            Label3.Text=db.Kategoriler.Where(x => x.Kategori_ad == "Kalıtsal Solunum Hastalıkları").Count().ToString();//id bilinmeyeni isme göre say 
            Label5.Text = db.Kalıtsal_Hastalık.Where(y => y.KHastalik_id == (db.yorumlar.GroupBy(x => x.KHastalik_id).OrderByDescending(x => x.Count()).Select(z => z.Key).FirstOrDefault())).Select(k => k.KHastalik_ad).FirstOrDefault();

          

            IList<kalıtsalDetay_Result> spRes = db.kalıtsalDetay().ToList();
            GridView2.AutoGenerateColumns = true;
            GridView2.DataSource = spRes;
            GridView2.DataBind();
          

          
        }

      



        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //    base.VerifyRenderingInServerForm(control);
        //}
    }
}