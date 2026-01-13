<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="SmartOfficeApp.PersonelEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 500px; margin: 40px auto; background: #fff; padding: 30px; border-radius: 10px; border: 1px solid #ddd; box-shadow: 0 4px 10px rgba(0,0,0,0.05);">
        <h2 style="color: #2c3e50; font-weight: bold; margin-bottom: 25px; text-align: center;">Yeni Personel Kaydı</h2>

        <div style="margin-bottom: 15px;">
            <label style="font-weight:bold; display:block;">Ad Soyad:</label>
            <asp:TextBox ID="txtAdSoyad" runat="server" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;"></asp:TextBox>
        </div>

        <div style="margin-bottom: 15px;">
            <label style="font-weight:bold; display:block;">E-Posta:</label>
            <asp:TextBox ID="txtEmail" runat="server" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;"></asp:TextBox>
        </div>

        <div style="margin-bottom: 15px;">
            <label style="font-weight:bold; display:block;">Birim:</label>
            <asp:DropDownList ID="ddlBirim" runat="server" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;"></asp:DropDownList>
        </div>

        <div style="margin-bottom: 25px;">
            <label style="font-weight:bold; display:block;">Unvan:</label>
            <asp:DropDownList ID="ddlUnvan" runat="server" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;"></asp:DropDownList>
        </div>

        <asp:Button ID="btnKaydet" runat="server" Text="💾 Kaydet" OnClick="btnKaydet_Click" style="width: 100%; background: #05c46b; color: white; border: none; padding: 15px; border-radius: 5px; cursor: pointer; font-weight: bold; font-size: 16px;" />
    </div>
</asp:Content>