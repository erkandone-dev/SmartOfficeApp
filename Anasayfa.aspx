<%@ Page Title="" Language="C#" MasterPageFile="~/Ziyaretci.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="SmartOfficeApp.Anasayfa" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #f8f9fa; padding: 50px 20px; border-radius: 15px; text-align: center; margin-bottom: 30px; border: 1px solid #dee2e6;">
        <h1 style="color: #2c3e50; font-size: 2.5rem;">SmartOffice Kurumsal Yönetim</h1>
        <p style="color: #7f8c8d; font-size: 1.1rem; max-width: 700px; margin: 15px auto;">
            Personel verimliliğini artıran, envanter takibini kolaylaştıran ve birimler arası koordinasyonu sağlayan yeni nesil ofis otomasyonuna hoş geldiniz.
        </p>
        <div style="margin-top: 20px;">
            <a href="#ekibimiz" style="background-color: #05c46b; color: white; padding: 12px 25px; border-radius: 5px; text-decoration: none; font-weight: bold; margin-right: 10px;">Ekibimizi Tanıyın</a>
            <a href="Login.aspx" style="background-color: #34495e; color: white; padding: 12px 25px; border-radius: 5px; text-decoration: none; font-weight: bold;">Yönetici Girişi</a>
        </div>
    </div>

    <div style="display: flex; gap: 20px; margin-bottom: 40px;">
        <div style="flex: 1; padding: 25px; background: white; border: 1px solid #eee; border-radius: 10px; text-align: center;">
            <div style="font-size: 30px; margin-bottom: 10px;">📈</div>
            <h4 style="color: #2c3e50;">Veri Yönetimi</h4>
            <p style="color: #95a5a6; font-size: 14px;">Entity Framework ile hatasız ve hızlı veri işleme altyapısı.</p>
        </div>
        <div style="flex: 1; padding: 25px; background: white; border: 1px solid #eee; border-radius: 10px; text-align: center;">
            <div style="font-size: 30px; margin-bottom: 10px;">🏢</div>
            <h4 style="color: #2c3e50;">Birim Bazlı Takip</h4>
            <p style="color: #95a5a6; font-size: 14px;">Tüm birimlerin personel dağılımını tek ekrandan kontrol edin.</p>
        </div>
        <div style="flex: 1; padding: 25px; background: white; border: 1px solid #eee; border-radius: 10px; text-align: center;">
            <div style="font-size: 30px; margin-bottom: 10px;">🔒</div>
            <h4 style="color: #2c3e50;">Güvenilir İşlem</h4>
            <p style="color: #95a5a6; font-size: 14px;">Hiçbir veriniz üçüncü kişilerle paylaşılmaz</p>
        </div>
    </div>

    <div id="ekibimiz" style="margin-top: 50px;">
        <h2 style="text-align:center; color: #2c3e50; margin-bottom: 30px; border-bottom: 2px solid #05c46b; display: table; margin-left: auto; margin-right: auto; padding-bottom: 10px;">Ekibimiz</h2>
        <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); gap: 20px;">
            <asp:Repeater ID="rptPersoneller" runat="server">
                <ItemTemplate>
                    <div style="background: white; border: 1px solid #eee; padding: 20px; border-radius: 8px; text-align: center; box-shadow: 0 2px 5px rgba(0,0,0,0.05);">
                        <div style="font-size: 40px; margin-bottom: 10px;">👤</div>
                        <h3 style="margin: 5px 0; color: #34495e; font-size: 1.2rem;"><%# Eval("AdSoyad") %></h3>
                        <div style="background: #e8fcf3; color: #05c46b; font-size: 12px; font-weight: bold; padding: 3px 10px; border-radius: 15px; display: inline-block; margin-bottom: 5px;"><%# Eval("BirimAdi") %></div>
                        <p style="color: #7f8c8d; font-size: 13px; margin: 5px 0;"><%# Eval("UnvanAdi") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <div style="margin-top: 60px; padding: 30px; background: #34495e; color: white; border-radius: 10px; display: flex; justify-content: space-between; align-items: center;">
        <div>
            <h3 style="margin: 0;">Bizimle İletişime Geçin</h3>
            <p style="margin: 5px 0 0; opacity: 0.8;">Sorularınız için teknik destek ekibimiz her zaman burada.</p>
        </div>
        <div>
            <span style="border: 1px solid white; padding: 10px 20px; border-radius: 5px; font-weight: bold;">0535 462 75 30</span>
        </div>
    </div>
</asp:Content>