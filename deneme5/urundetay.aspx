<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="urundetay.aspx.cs" Inherits="deneme5.urundetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />  
    <img src="images/a.jpeg" alt="Shoes 2" style="margin:10px 200px;text-align:center" />
   
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <h3 style="text-align:center;">Kitap Adı : <%#Eval("kitapAd") %></h3>
            <h4 style="text-align:center;">Kitap Fiyat : <%#Eval("kitapFiyat") %>  &#8378;</h4>
            <h5 style="text-align:center;">Kitap Yılı : <%#Eval("kitapBasimYili") %></h5>
            <h5 style="text-align:center;">Kitap Sayfa Sayısı : <%#Eval("kitapSayfaSayisi") %></h5>   
            <h5 style="text-align:center;">Kitap ISBN No : <%#Eval("kitapISBN") %></h5>        
            <h5 style="text-align:center;">Kitap Stok Adet : <%#Eval("kitapStokAdet") %></h5>      
            <h5 style="text-align:center;">Kitap Açıklama : <%#Eval("kitapAciklama") %></h5>
     
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KitapEviConnectionString %>" SelectCommand="SELECT * FROM [Kitaplar] WHERE ([kitapID] = @kitapID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="kitapID" QueryStringField="kitapid" Type="Int32" />
        </SelectParameters>



    </asp:SqlDataSource>
</asp:Content>
