using System;
using System.Linq;
using System.Web.UI;

namespace SmartOfficeApp
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        OfisContext db = new OfisContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ddlBirim.DataSource = db.Birimler.ToList();
                ddlBirim.DataTextField = "BirimAd";
                ddlBirim.DataValueField = "Id";
                ddlBirim.DataBind();

                ddlUnvan.DataSource = db.Unvanlar.ToList();
                ddlUnvan.DataTextField = "UnvanAd";
                ddlUnvan.DataValueField = "Id";
                ddlUnvan.DataBind();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                var p = new Personel
                {
                    AdSoyad = txtAdSoyad.Text,
                    BirimId = int.Parse(ddlBirim.SelectedValue),
                    UnvanId = int.Parse(ddlUnvan.SelectedValue),

                    Email = txtEmail.Text
                };

                db.Personeller.Add(p);
                db.SaveChanges();

                Response.Redirect("PersonelListesi.aspx");
            }
            catch (Exception)
            {

            }
        }
    }
}