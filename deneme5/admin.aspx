<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="deneme5.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="musteriID" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="musteriID" HeaderText="musteriID" InsertVisible="False" ReadOnly="True" SortExpression="musteriID" />
                    <asp:BoundField DataField="musteriAd" HeaderText="musteriAd" SortExpression="musteriAd" />
                    <asp:BoundField DataField="musteriSoyad" HeaderText="musteriSoyad" SortExpression="musteriSoyad" />
                    <asp:BoundField DataField="musteriTCKimlik" HeaderText="musteriTCKimlik" SortExpression="musteriTCKimlik" />
                    <asp:BoundField DataField="musteriEposta" HeaderText="musteriEposta" SortExpression="musteriEposta" />
                    <asp:BoundField DataField="musteriTelefon" HeaderText="musteriTelefon" SortExpression="musteriTelefon" />
                    <asp:BoundField DataField="musteriAdres" HeaderText="musteriAdres" SortExpression="musteriAdres" />
                    <asp:BoundField DataField="ulkeID" HeaderText="ulkeID" SortExpression="ulkeID" />
                    <asp:BoundField DataField="sehirID" HeaderText="sehirID" SortExpression="sehirID" />
                    <asp:BoundField DataField="ilceID" HeaderText="ilceID" SortExpression="ilceID" />
                    <asp:BoundField DataField="musteriPostaKodu" HeaderText="musteriPostaKodu" SortExpression="musteriPostaKodu" />
                    <asp:CheckBoxField DataField="musteriAktifMi" HeaderText="musteriAktifMi" SortExpression="musteriAktifMi" />
                    <asp:BoundField DataField="musteriParola" HeaderText="musteriParola" SortExpression="musteriParola" />
                    <asp:BoundField DataField="musteriCariHesap" HeaderText="musteriCariHesap" SortExpression="musteriCariHesap" />
                    <asp:BoundField DataField="musteriDogumTarihi" HeaderText="musteriDogumTarihi" SortExpression="musteriDogumTarihi" />
                    <asp:BoundField DataField="cinsiyetID" HeaderText="cinsiyetID" SortExpression="cinsiyetID" />
                    <asp:BoundField DataField="musteriAciklama" HeaderText="musteriAciklama" SortExpression="musteriAciklama" />
                    <asp:CheckBoxField DataField="musteriKurumsalMi" HeaderText="musteriKurumsalMi" SortExpression="musteriKurumsalMi" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KitapEviConnectionString %>" SelectCommand="SELECT * FROM [Musteriler]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Çıkış Yap" OnClick="Button1_Click" /><a href="login.aspx"></a>
            <asp:Button ID="Button2" runat="server" Text="Anasayfaya Git" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
