using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GenFarkWebSite.Entity;
namespace GenFarkWebSite
{
    public partial class Hastalıklar : System.Web.UI.Page
    {
        genfarkEntities db = new genfarkEntities();
        protected void Page_Load(object sender, EventArgs e)
       {
            var hastalıklar = db.Kalıtsal_Hastalık.ToList();
            Repeater1.DataSource = hastalıklar;
            Repeater1.DataBind();


        }
    }
}