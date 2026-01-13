<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonelListesi.aspx.cs" Inherits="SmartOfficeApp.PersonelListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 20px;">
        <h2 style="color: #2c3e50; font-weight: bold; margin-bottom: 20px;">Personel Yönetimi</h2>

        <div style="background: #fff; padding: 25px; border-radius: 10px; border: 1px solid #ddd; margin-bottom: 20px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
            <div style="display: flex; gap: 15px; align-items: center;">
                <%-- Arama Kutusu --%>
                <asp:TextBox ID="txtAra" runat="server" placeholder="Personel ismi yazın..." 
                    style="width: 350px !important; padding: 12px; border: 2px solid #05c46b; border-radius: 5px; outline: none; display: inline-block !important;"></asp:TextBox>
                
                <%-- Filtrele Butonu --%>
                <asp:Button ID="btnAra" runat="server" Text="🔍 Filtrele" OnClick="btnAra_Click" 
                    style="background: #05c46b; color: white; border: none; padding: 12px 30px; border-radius: 5px; cursor: pointer; font-weight: bold;" />
                
                <%-- Sıfırla Butonu --%>
                <asp:Button ID="btnTemizle" runat="server" Text="Sıfırla" OnClick="btnTemizle_Click" 
                    style="background: #34495e; color: white; border: none; padding: 12px 30px; border-radius: 5px; cursor: pointer;" />
            </div>
        </div>

        <asp:GridView ID="gvPersoneller" runat="server" AutoGenerateColumns="false" Width="100%" GridLines="None" style="background: #fff; border-radius: 10px; overflow: hidden; border: 1px solid #eee;">
            <HeaderStyle BackColor="#34495e" ForeColor="Black" Height="45px" Font-Bold="true" />
            <RowStyle Height="50px" BorderColor="#f1f1f1" BorderStyle="Solid" BorderWidth="1px" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="AdSoyad" HeaderText="Ad Soyad" />
                <asp:BoundField DataField="BirimAdi" HeaderText="Birim" />
                <asp:TemplateField HeaderText="İşlemler" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <a href='PersonelDetay.aspx?id=<%# Eval("Id") %>' style="color: #3498db; text-decoration:none; font-weight:bold; margin-right: 15px;">🔍 Detay</a>
                        <asp:LinkButton ID="btnSil" runat="server" Text="🗑 Sil" CommandArgument='<%# Eval("Id") %>' OnClick="btnSil_Click" OnClientClick="return confirm('Silinsin mi?');" style="color: #e74c3c; text-decoration:none; font-weight:bold;"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>