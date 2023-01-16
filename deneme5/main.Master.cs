using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme5
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["Aktif Kullanıcı"].ToString();
            if (Session["tcno"]==null)
            {
                lbl2.Text = "Kullanıcı Kimliği Aktif Değil ";
                lbl2.BackColor = Color.Red;
            }
            else
            {
                lbl2.Text = "Kullanıcı Kimliği : " + Session["tcno"].ToString();
                lbl2.BackColor = Color.Green;
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}