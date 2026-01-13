using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartOfficeApp
{
    public partial class PersonelListesi : System.Web.UI.Page
    {
        OfisContext db = new OfisContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VerileriYukle();
            }
        }


        void VerileriYukle(string arananKelime = "")
        {
            var query = from p in db.Personeller
                        join b in db.Birimler on p.BirimId equals b.Id
                        select new { p.Id, p.AdSoyad, BirimAdi = b.BirimAd };

            if (!string.IsNullOrEmpty(arananKelime))
            {

                string aranan = arananKelime.ToLower();
                query = query.Where(x => x.AdSoyad.ToLower().Contains(aranan));
            }

            gvPersoneller.DataSource = query.ToList();
            gvPersoneller.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {

            VerileriYukle(txtAra.Text.Trim());
        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            txtAra.Text = "";
            VerileriYukle();
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var p = db.Personeller.Find(id);
            if (p != null) { db.Personeller.Remove(p); db.SaveChanges(); VerileriYukle(); }
        }
    }
}