using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KitapeviEntity
{
    public class kategorilerEntity
    {
        public int kategoriID { get; set; }
        public string kategoriAd { get; set; }
        public string kategoriAciklama { get; set; }
        public bool kategoriAktifMi { get; set; }

    }
}