<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonelDetay.aspx.cs" Inherits="SmartOfficeApp.PersonelDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 600px; margin: 40px auto; background: #fff; padding: 30px; border-radius: 15px; border-top: 5px solid #05c46b; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
        <h2 style="text-align: center; color: #2c3e50; font-weight: bold;">Personel Detay</h2>
        <hr />

        <div style="line-height: 2.5; font-size: 16px; color: #333;">
            <p><strong>🆔 Personel ID:</strong>
                <asp:Label ID="lblId" runat="server" Font-Bold="true" ForeColor="#e74c3c" /></p>
            <p><strong>👤 Ad Soyad:</strong>
                <asp:Label ID="lblAdSoyad" runat="server" /></p>
            <p><strong>🏢 Birim:</strong>
                <asp:Label ID="lblBirim" runat="server" /></p>
            <p><strong>E-Posta:</strong>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></p>
        </div>

        <div style="margin-top: 30px; text-align: center;">
            <a href="PersonelListesi.aspx" style="background: #34495e; color: white; padding: 12px 25px; text-decoration: none; border-radius: 5px; font-weight: bold; transition: 0.3s;">⬅ Listeye Geri Dön
            </a>
        </div>
    </div>
</asp:Content>
