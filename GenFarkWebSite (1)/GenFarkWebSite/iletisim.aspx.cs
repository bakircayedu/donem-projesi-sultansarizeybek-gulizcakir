using GenFarkWebSite.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GenFarkWebSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        genfarkEntities db = new genfarkEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {

            İletisim i = new İletisim();
            i.İletisim_sahip = TextBox1.Text;
            i.İletisim_konusu = TextBox2.Text;
            i.İletisim_icerik = TextBox3.Text;
            db.İletisim.Add(i);
            db.SaveChanges();
        }

    }
}