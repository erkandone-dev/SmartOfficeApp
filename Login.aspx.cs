using System;

namespace SmartOfficeApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {

            if (txtKullanici.Text == "admin" && txtSifre.Text == "123")
            {

                Response.Redirect("PersonelListesi.aspx");
            }
            else
            {

                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı!');</script>");
            }
        }
    }
}