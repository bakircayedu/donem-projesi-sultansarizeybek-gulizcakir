using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;

namespace GenFarkWebSite.AdminSayfalar
{
    public partial class YeniHastalik : System.Web.UI.Page
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








            if (Page.IsPostBack == false)
            {
                var kategoriler = (from x in db.Kategoriler
                                   select new
                                   {
                                       x.Kategori_id,
                                       x.Kategori_ad

                                   }).ToList();
                DropDownList1.DataSource = kategoriler;
                DropDownList1.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Kalıtsal_Hastalık t = new Kalıtsal_Hastalık();
            t.KHastalik_ad = TextBox1.Text;
            t.KHastalik_foto = TextBox3.Text;
            t.KHastalik_bilgi = TextBox4.Text;
            t.KHastalik_tarih = DateTime.Parse(TextBox2.Text);
            t.Kategori_id = byte.Parse(DropDownList1.SelectedValue);
            db.Kalıtsal_Hastalık.Add(t);
            db.SaveChanges();
            Response.Redirect("HastaliklarBlog.aspx");

        }
    }
}