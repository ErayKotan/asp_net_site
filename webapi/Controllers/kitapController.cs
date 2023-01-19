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
    public class kitapController : ApiController
    {
        SqlConnection baglanti = new SqlConnection("Server=.;Database=DB_KitapEvi;Trusted_Connection=True;");

        List<kitaplarEntity> kitaplarlistesi = new List<kitaplarEntity>();

        public List<kitaplarEntity> getTumKitaplar()
        {
            SqlCommand sorgu = new SqlCommand("select * from Kitaplar", baglanti);
            baglanti.Open();
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                kitaplarEntity kitaplarson = new kitaplarEntity();
                kitaplarson.kitapID = dr.GetInt32(0);
                kitaplarson.kitapAd=dr.GetString(1);
                kitaplarson.kitapBasimYili= dr.GetString(2);
                kitaplarson.yayineviID=dr.GetInt32(3);  
                kitaplarson.kitapFiyat=dr.GetDecimal(4);
                //kitaplarson.kitapSayfaSayisi = dr.GetInt32(5);
                //kitaplarson.kitapStokAdet = dr.GetInt32(6);
                kitaplarson.dilID= dr.GetInt32(7);
                //kitaplarson.kitapAciklama = dr.GetString(8);
                kitaplarson.kitapAktifMi=dr.GetBoolean(9);
                //kitaplarson.kitapKapakResmi = dr.GetString(10);
                kitaplarson.kitapISBN=dr.GetString(11);
                kitaplarlistesi.Add(kitaplarson);
            }
            baglanti.Close();
            return kitaplarlistesi;
        }

        public List<kitaplarEntity> getAdınaGoreKitapGetirme(string gelenkitap)
        {
            SqlCommand sorgu = new SqlCommand("  select * from Kitaplar where kitapAd like '%"+ gelenkitap + "%'", baglanti);
            baglanti.Open();
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                kitaplarEntity kitaplarson = new kitaplarEntity();
                kitaplarson.kitapID = dr.GetInt32(0);
                kitaplarson.kitapAd = dr.GetString(1);
                kitaplarson.kitapBasimYili = dr.GetString(2);
                kitaplarson.yayineviID = dr.GetInt32(3);
                kitaplarson.kitapFiyat = dr.GetDecimal(4);
                //kitaplarson.kitapSayfaSayisi = dr.GetInt32(5);
                //kitaplarson.kitapStokAdet = dr.GetInt32(6);
                kitaplarson.dilID = dr.GetInt32(7);
                //kitaplarson.kitapAciklama = dr.GetString(8);
                kitaplarson.kitapAktifMi = dr.GetBoolean(9);
                //kitaplarson.kitapKapakResmi = dr.GetString(10);
                kitaplarson.kitapISBN = dr.GetString(11);
                kitaplarlistesi.Add(kitaplarson);
            }
            baglanti.Close();
            return kitaplarlistesi;
        }
    }
}

