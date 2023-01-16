<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="deneme5.deneme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl1" runat="server" Text=""></asp:Label><br />  
            <asp:Label ID="lbl2" runat="server" Text=""></asp:Label><br />  
            <asp:Label ID="lbl3" runat="server" Text=""></asp:Label><br /> 
           <%-- <asp:Button ID="Button1" runat="server" Text="DevamEt" OnClick="Button1_Click" />--%>
            <asp:Button ID="btncikis" runat="server" Text="Çıkış Yap" OnClick="btncikis_Click" />
        </div>
    </form>
</body>
</html>
