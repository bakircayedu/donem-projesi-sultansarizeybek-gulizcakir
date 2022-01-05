using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite.AdminSayfalar
{
    public partial class HastalikGüncelle : System.Web.UI.Page
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






            int y = int.Parse(Request.QueryString["KHastalik_id"]);
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

                var deger = db.Kalıtsal_Hastalık.Find(y);
                TextBox1.Text = deger.KHastalik_ad;
                TextBox2.Text = deger.KHastalik_tarih.ToString();
                TextBox3.Text = deger.KHastalik_foto;
                TextBox4.Text = deger.KHastalik_bilgi;
                DropDownList1.SelectedValue = deger.Kategori_id.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["KHastalik_id"]);
            var blog = db.Kalıtsal_Hastalık.Find(y);
            blog.KHastalik_ad = TextBox1.Text;
            blog.KHastalik_tarih = DateTime.Parse(TextBox2.Text);
            blog.KHastalik_foto = TextBox3.Text;
            blog.KHastalik_bilgi = TextBox4.Text;
            blog.Kategori_id = byte.Parse(DropDownList1.SelectedValue);
            db.SaveChanges();
            Response.Redirect("HastaliklarBlog.aspx");
        }
    }
}