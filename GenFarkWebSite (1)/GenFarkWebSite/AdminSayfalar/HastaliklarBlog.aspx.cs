using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite.AdminSayfalar
{
    public partial class HastaliklarBlog : System.Web.UI.Page
    {
        genfarkEntities db = new genfarkEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["Yonetici_ad"].ToString());

            if (Session["Yonetici_ad"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: " + Session["Yonetici_ad"].ToString());
            }


            Repeater1.DataSource = db.Kalıtsal_Hastalık.ToList();
            Repeater1.DataBind();
        }
    }
}