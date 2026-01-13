<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SmartOfficeApp.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Yönetici Girişi | SmartOffice</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .login-container { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); width: 350px; }
        .login-container h2 { text-align: center; color: #2c3e50; margin-bottom: 30px; }
        .form-group { margin-bottom: 20px; }
        .form-group label { display: block; margin-bottom: 8px; font-weight: bold; color: #555; }
        .form-group input { width: 100%; padding: 12px; border: 1px solid #ddd; border-radius: 5px; box-sizing: border-box; }
        .btn-login { width: 100%; padding: 12px; background-color: #05c46b; color: white; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; font-weight: bold; }
        .btn-login:hover { background-color: #04aa5d; }
        .back-link { display: block; text-align: center; margin-top: 20px; color: #7f8c8d; text-decoration: none; font-size: 14px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Panel Girişi</h2>
            <div class="form-group">
                <label>Kullanıcı Adı:</label>
                <asp:TextBox ID="txtKullanici" runat="server" placeholder="Kullanıcı adını giriniz"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Şifre:</label>
                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="Şifrenizi giriniz"></asp:TextBox>
            </div>
            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="btn-login" OnClick="btnGiris_Click" />
            <a href="Anasayfa.aspx" class="back-link">← Siteye Geri Dön</a>
        </div>
    </form>
</body>
</html>