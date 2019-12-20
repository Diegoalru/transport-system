<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TransportAPP.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Transportes TSD</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Passengers Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="Css/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="Css/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="Css/css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->  
<!-- //Custom Theme files -->  
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts -->
    <style type="text/css">
        .auto-style4 {
            font-size: 30pt;
        }
        .auto-style5 {
            font-size: 12em;
        }
        .auto-style7 {
            font-size: x-small;
        }
        input[type=checkbox] {
    transform: scale(1.5);
}
        .auto-style9 {
            height: 828px;
        }
    </style>
</head>
<body>  
	<!-- banner -->
	<div class="agileits-banner">
		<div class="bnr-agileinfo"> 
			<!-- navigation -->
			<div class="top-nav w3-agiletop">
				<div class="container">
					<div class="navbar-header w3llogo">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>  
						<h1><a href="Home.aspx">Transportes Estudinatiles(TSD)</a></h1> 
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<div class="w3menu navbar-right">
							<ul class="nav navbar">
								<li><a href="Home.aspx" >Inicio</a></li>
								<li><a href="Registro.aspx" >Registrarse</a></li>
								<li><a href="Login.aspx" class="active">Login</a></li>
								<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">Acceso Usuarios</span><span class="caret"></span></a>
									<ul class="dropdown-menu"> 
										<li><a href=""><b>¡CLICK AQUÍ!...Para "Usuarios"</b></a></li>
										<br>
										<br>
										<li><a href="">Acceso Choferess</a></li>
										<li><a href="">Acceso Administrativo</a></li>
										<!--<li><a href="icons.html">Web Icons</a></li>
										<li><a href="codes.html">Short Codes</a></li>-->
									</ul>
								</li>  
								
							</ul>
						</div> 
						<div class="clearfix"> </div>  
					</div>
				</div>	
			</div>	
			<!-- //navigation -->	
			<!-- banner-text -->
			<div class="banner-text agileinfo about-bnrtext"> 
				<div class="container">
					<h2 class="text-left"><a href="Home.apsx">Inicio</a> / Login</h2> 
				</div>
			</div>
			<!-- //banner-text -->   
		</div>
	</div>
	<!-- //banner --> 
	<!-- contact -->
	<div class="contact agileits">
		<div class="container">  
			<div class="agileits-title">
				<h3>Inicio de sesion</h3>
			</div>  
			<div class="contact-agileinfo">
				<div class="col-md-4 contact-form wthree" style="left: 442px; top: 60px; width: 500px">
					<form id="Form1" runat="server" class="auto-style9">
						<h2 class="text-left">
						<asp:Label ID="Lbl_Usuario" runat="server"  Font-Size="20pt" Text="Usuario" CssClass="auto-style4"></asp:Label>
                        </h2>
                        <br>
						<asp:TextBox ID="txt_Usuario" runat="server" Text="Usuario" CssClass="auto-style5"></asp:TextBox><br><br /><br />
                        <h2 class="text-left">
						<asp:Label ID="Lbl_Contraseña" runat="server"  Font-Size="20pt" Text="Contraseña" CssClass="auto-style4"></asp:Label>
                        </h2><br />
						<asp:TextBox ID="txt_Contraseña" runat="server" TextMode="Password" CssClass="auto-style7"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<h2 class="text-left">
						    &nbsp;</h2><br />
                        <br />
                        <asp:Label runat="server" ID="Txt_Mensaje" Text="" ForeColor="Red"></asp:Label>
                        <br />
						<asp:Button ID="btn_Login" runat="server" Text="Login" OnClick="btn_Login_Click"/>

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->   

	<!-- footer -->
	<div class="footer w3-w3layouts">
		<div class="container"> 
			<div class="footer-agileinfo">
				<div class="col-md-4 col-sm-4 footer-wthreegrid" style="text-align: left; left: 0px; top: 0px; width: 855px">
					<h3>Acerca de:<h3> 
						<p>Proyecto universitario con fines educativos de la ULACIT / Servicios Web</p>
						<div class="social-w3licon">
							<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
							<!--<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>--> 
						</div>  
					</div>
                <div class="col-md-4 col-sm-4 footer-wthreegrid" style="text-align: left; left: 639px; top: -173px; width: 422px">
                <h4 class="text-left">Contactenos :</h4>
						<p><i class="fa fa-map-marker"></i> San Francisco, Guadalupe, San José, Costa Rica. </p>
						<p><i class="fa fa-phone"></i> Telephone : +506 8888 9999</p>
						<p><i class="fa fa-fax"></i> FAX : +506 2222 3344</p>
						<p><i class="fa fa-envelope-o"></i> Email : <a href="mailto:example@mail.com">serviciosweb@example.com</a></p>
					</div>
                    <div class="clearfix"> </div>
				</div>
			</div>  
		</div>
		<div class="container">
		</div> 
	<div class="copy-right"> 
	</div>
	</body>
</html>
