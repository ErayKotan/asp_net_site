using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme5
{
    public partial class deneme : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

             
                
            
            
            

           
            


            /*
            if (Session["kullaniciadi"].ToString()=="admin"&& Session["pass"].ToString() == "123")
            {

                lbl1.Text = "hg";
                lbl2.Text = "admin";
                
               // System.Threading.Thread.Sleep(3000);
               // Response.Redirect("~/index.aspx");
            }
            else
            {
                lbl1.Text = "Kayıtlı Değilsim";
                lbl2.Text = "Kayıt ol";

            }
            */
        }
        
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(3000);
            //Response.Redirect("~/index.aspx");
        }

        protected void btncikis_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            //Response.Redirect("~/login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("~/index.aspx");
        }
    }
}