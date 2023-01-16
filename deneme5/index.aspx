<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="deneme5.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div> 
        <asp:TextBox ID="txtAra" runat="server"></asp:TextBox>
        <asp:Button ID="btnAra" runat="server" Text="ARA" OnClick="btnAra_Click" />
    </div>
    <div> <br />  </div>
    <div style="text-align:center">  <h1 >KİTAPLAR</h1>  
        <!-- ARANILAN ADA GÖRE KİTAP GETİRME -->
        <asp:Panel ID="Panel2" runat="server" Visible="False">

            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
          <ItemTemplate>
            <div class="product_box">
	            <h3 style="font-size:7px"><%#Eval("kitapAd") %></h3>
            	<a href="urundetay.aspx"><img src="images/a.jpeg" alt="Shoes 1" style="height:50%;width:50% " /></a>
                <p><%#Eval("kitapFiyat") %> &#8378</p>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("kitapID","~/urundetay.aspx?kitapid={0}") %>'>Ayrıntılı Bilgi İçin Tıklayınız</asp:HyperLink>

            </div> 
           </ItemTemplate>
        </asp:Repeater>

        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KitapEviConnectionString %>" SelectCommand="SELECT * FROM [Kitaplar] WHERE ([kitapAd] LIKE '%' + @kitapAd + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtAra" Name="kitapAd" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

         <!-- TIKLANILAN KATEGORİYE GÖRE KİTAP GETİRME -->
        <asp:Panel ID="Panel1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
          <ItemTemplate>
            <div class="product_box">
	            <h3 style="font-size:7px"><%#Eval("kitapAd") %></h3>
            	<a href="urundetay.aspx"><img src="images/a.jpeg" alt="Shoes 1" style="height:50%;width:50% " /></a>
                <p><%#Eval("kitapFiyat") %> &#8378</p>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("kitapID","~/urundetay.aspx?kitapid={0}") %>'>Ayrıntılı Bilgi İçin Tıklayınız</asp:HyperLink>

            </div> 
           </ItemTemplate>

        <AlternatingItemTemplate>
            <div class="product_box">
            	<h3 style="font-size:7px"><%#Eval("kitapAd") %></h3>
            	<a href="urundetay.aspx"><img src="images/a.jpeg" alt="Shoes 2" style="height:50%;width:50% "/></a>
                <p><%#Eval("kitapFiyat") %>  &#8378</p>
                
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("kitapID","~/urundetay.aspx?kitapid={0}") %>'>Ayrıntılı Bilgi İçin Tıklayınız</asp:HyperLink>

            </div>     
        </AlternatingItemTemplate>
        </asp:Repeater>
            </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KitapEviConnectionString %>" SelectCommand="SELECT k.kitapID, k.kitapAd, k.kitapBasimYili, k.yayineviID, k.kitapFiyat, k.kitapSayfaSayisi, k.kitapStokAdet, k.dilID, k.kitapAciklama, k.kitapAktifMi, k.kitapKapakResmi, k.kitapISBN, kk.kitapID AS Expr1, kk.kategoriID, ka.kategoriID AS Expr2, ka.kategoriAd, ka.kategoriAciklama, ka.kategoriAktifMi FROM Kitaplar AS k INNER JOIN KitaplarKategoriler AS kk ON k.kitapID = kk.kitapID INNER JOIN Kategoriler AS ka ON kk.kategoriID = ka.kategoriID WHERE (ka.kategoriID = @id)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="id" DefaultValue="1" Name="id"></asp:QueryStringParameter>


            </SelectParameters>
        </asp:SqlDataSource>
   
        




    </div>
</asp:Content>
