using System;
using System.Linq;

namespace SmartOfficeApp
{
    public partial class PersonelDetay : System.Web.UI.Page
    {
        OfisContext db = new OfisContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int gelenId = Convert.ToInt32(Request.QueryString["id"]);


                var p = db.Personeller.Find(gelenId);

                if (p != null)
                {
                    lblId.Text = p.Id.ToString();
                    lblAdSoyad.Text = p.AdSoyad;


                    lblEmail.Text = p.Email;


                    var birim = db.Birimler.Find(p.BirimId);
                    lblBirim.Text = birim != null ? birim.BirimAd : "Belirtilmemiş";
                }
            }
            else
            {
                Response.Redirect("PersonelListesi.aspx");
            }
        }
    }
}