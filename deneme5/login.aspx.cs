using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme5
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Server=.;Database=DB_KitapEvi;Trusted_Connection=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
     

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtsifre.Text=="" || txttc.Text=="")
            {
                lbl1.Text = "Kullanıcı Adı veya Şifre Boş Bırakılamaz !!!";
            }
            else 
            {
                baglanti.Open();
                SqlCommand sorgu = new SqlCommand("select musteriID,musteriTCKimlik,musteriParola from Musteriler where musteriTCKimlik='" + txttc.Text + "' and musteriParola='" + txtsifre.Text+"'",baglanti);
                SqlDataReader dr = sorgu.ExecuteReader();


                while (dr.Read())
                {
                    if (dr[1].ToString()=="admin" || dr[2].ToString() == "0000")
                    {
                        Session.Add("tcno", txttc.Text);
                        Session.Add("sifre", txtsifre.Text);
                        baglanti.Close();
                        Response.Redirect("~/admin.aspx");
                    }
                    else
                    {
                        Session.Add("tcno", txttc.Text);
                        Session.Add("sifre", txtsifre.Text);
                        baglanti.Close();
                        Response.Redirect("~/index.aspx");
                    }
 
                }
            }    

        }
    }
}