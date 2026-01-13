using System;
using System.Linq;

namespace SmartOfficeApp
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        OfisContext db = new OfisContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var personelListesi = (from p in db.Personeller
                                       join b in db.Birimler on p.BirimId equals b.Id
                                       join u in db.Unvanlar on p.UnvanId equals u.Id
                                       select new
                                       {
                                           p.AdSoyad,
                                           BirimAdi = b.BirimAd,
                                           UnvanAdi = u.UnvanAd
                                       }).ToList();

                rptPersoneller.DataSource = personelListesi;
                rptPersoneller.DataBind();
            }
        }
    }
}