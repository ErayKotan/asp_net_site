<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="deneme5.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<!-- templatemo 418 form pack -->
    <!-- 
    Form Pack
    http://www.templatemo.com/preview/templatemo_418_form_pack 
    -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body>
        <div>
			<div class="container">
		<div class="col-md-12" style="text-align:center">
			<h1 class="margin-bottom-15">Üye Giriş Ekranı</h1>
			<form runat="server" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="#" method="post">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
						<asp:TextBox placeholder="TC Kimlik No" ID="txttc" runat="server" class="form-control"></asp:TextBox>           	
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
						  <asp:TextBox placeholder="Şifre" ID="txtsifre" runat="server" class="form-control" ></asp:TextBox>
		            	
		            </div>
		          </div>
		        </div>

		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper" style="text-align:center">          		
						  <asp:Button ID="Button1" runat="server" Text="Giriş Yap" class="btn btn-info" OnClick="Button1_Click" />
		          	</div>
					  
		          </div>
		        </div>
		        <hr>
		        <div class="form-group" style="text-align:center">
		        	<div class="col-md-12">
						<a href="" style="color:blue;">Hesap Oluştur</a><br />
				      <a href="index.aspx" style="color:blue;">Kullanıcı Oluşturmadan devam et</a><br />
                        <br />	
                        <label>Hesaplarımız:  </label>
		        		<div class="inline-block">
		        			<a href="#"><i class="fa fa-facebook-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-twitter-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-google-plus-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-tumblr-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-github-square login-with"></i></a>
		        		</div>		        		
		        	</div>
		        </div>
		      </form>
		      <div class="text-center">
		      	
		      </div>
			<asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
		</div>
	</div>
        </div>

</body>
</html>
