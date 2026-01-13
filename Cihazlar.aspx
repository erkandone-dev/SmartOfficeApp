<%@ Page Title="Cihazlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cihazlar.aspx.cs" Inherits="SmartOfficeApp.Cihazlar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 20px;">
        <h3><i class="fa fa-desktop" style="margin-right: 10px; color: #337ab7;"></i>Kurumsal Cihaz Envanteri</h3>
        <p>Sistemde kayıtlı ofis cihazları aşağıda listelenmiştir:</p>

        <table class="table table-bordered table-striped">
            <thead style="background-color: #f9f9f9;">
                <tr>
                    <th>Cihaz Adı</th>
                    <th>Model</th>
                    <th>Durum</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Dizüstü Bilgisayar</td>
                    <td>Dell XPS 15</td>
                    <td><span class="label label-success">Aktif</span></td>

                </tr>
                <tr>
                    <td>Monitör</td>
                    <td>HP 24" EliteDisplay</td>
                    <td><span class="label label-primary">Hazır</span></td>
                </tr>
                <tr>
                    <td>Klavye & Mouse Set</td>
                    <td>Logitech Kablosuz</td>
                    <td><span class="label label-success">Aktif</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
