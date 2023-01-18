using KitapeviEntity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace webapi.Controllers
{
    public class kategoriController : ApiController
    {
        SqlConnection baglanti = new SqlConnection("Server=.;Database=DB_KitapEvi;Trusted_Connection=True;");
       
        List<kategorilerEntity> kategorilistesi = new List<kategorilerEntity>();

        public List<kategorilerEntity> getTumKategoriler()
        {
            SqlCommand sorgu = new SqlCommand("select * from Kategoriler", baglanti);
            baglanti.Open();
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                kategorilerEntity kategoriler = new kategorilerEntity();
                kategoriler.kategoriID = dr.GetInt32(0);
                kategoriler.kategoriAd = dr.GetString(1);
                kategoriler.kategoriAciklama = dr.GetString(2);
                kategoriler.kategoriAktifMi = dr.GetBoolean(3);
                kategorilistesi.Add(kategoriler); 
            }
            baglanti.Close();
            return kategorilistesi;
        }

        public List<kategorilerEntity> getKategoriIDYEGoreGetir(int gelenid)
        {
            SqlCommand sorgu = new SqlCommand("select * from kategoriler where kategoriID="+gelenid, baglanti);
            baglanti.Open();
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                kategorilerEntity kategoriler = new kategorilerEntity();
                kategoriler.kategoriID = dr.GetInt32(0);
                kategoriler.kategoriAd = dr.GetString(1);
                kategoriler.kategoriAciklama = dr.GetString(2);
                kategoriler.kategoriAktifMi = dr.GetBoolean(3);
                kategorilistesi.Add(kategoriler);
            }
            baglanti.Close();
            return kategorilistesi;
        }
    }
}
