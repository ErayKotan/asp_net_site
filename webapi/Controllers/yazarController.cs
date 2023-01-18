using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace webapi.Controllers
{
    public class yazarController : ApiController
    {
        SqlConnection baglanti = new SqlConnection("Server=.;Database=DB_KitapEvi;Trusted_Connection=True;");
        public void getTumYazarlar()
        {

        }



    }
}
