<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TransportAPP.Registro" %>

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
        .auto-style6 {
            font-size: small;
            zoom: 0.5;
        }
        .auto-style7 {
            font-size: x-small;
        }
        input[type=checkbox] {
    transform: scale(1.5);
}
        .auto-style8 {
            font-size: 14px;
            zoom: 0.5;
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
								<li><a href="registrarse.html" class="active">Registrarse</a></li>
								<li><a href="gallery.html">Galeria</a></li>
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
					<h2 class="text-left"><a href="Home.apsx">Inicio</a> / Registrarse</h2> 
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
				<h3>Registro</h3>
			</div>  
			<div class="contact-agileinfo">
				<div class="col-md-4 contact-form wthree" style="left: -80px; top: 0px; width: 500px">
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
						<asp:Label ID="Lbl_ConfContraseña" runat="server"  Font-Size="20pt" Text="Confirmar contraseña" CssClass="auto-style4"></asp:Label>
                        </h2><br />
                        <asp:TextBox ID="txt_ConfContraseña" runat="server" TextMode="Password" CssClass="auto-style7"></asp:TextBox><br />
                        <br />
						<asp:Button ID="Btn_Verificar" runat="server" Text="Verificar" OnClick="Btn_Verificar_Click"/>

                        <div class="col-md-4 contact-form wthree" runat="server"  style="right: -465px; top: -350px; width: 750px">

						<asp:Label ID="Lbl_PrimerNombre" runat="server" Font-Size="20pt" Text="Primer Nombre" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_PrimerNombre" runat="server" Text="Primer Nombre" CssClass="auto-style5"></asp:TextBox><br><br /><br />

                        <asp:Label ID="Lbl_SegundoNombre" runat="server" Font-Size="20pt" Text="Segundo Nombre" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_SegundoNombre" runat="server" Text="Segundo Nombre" CssClass="auto-style5"></asp:TextBox><br><br /><br />

                        <asp:Label ID="Lbl_PrimerApellido" runat="server" Font-Size="20pt" Text="Primer Apellido" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_PrimerApellido" runat="server" Text="Primer Apellido" CssClass="auto-style5"></asp:TextBox><br><br /><br />

                        <asp:Label ID="Lbl_SegundoApellido" runat="server" Font-Size="20pt" Text="Segundo Apellido" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_SegundoApellido" runat="server" Text="Segundo Apellido" CssClass="auto-style5"></asp:TextBox><br><br /><br />

                        <asp:Label ID="Lbl_Sexo" runat="server" Font-Size="20pt" Text="Sexo" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Sexo" runat="server" Text="Sexo" CssClass="auto-style5"></asp:TextBox><br><br /><br />

                        <asp:Label ID="Lbl_Fecha" runat="server" Font-Size="20pt" Text="Fecha" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Fecha" runat="server" TextMode="Date" CssClass="auto-style7"></asp:TextBox><br><br />
                            <br />
                            <br />
                            <br />
                            <br />

						<asp:Button ID="Btn_Registrar" runat="server" Text="Registrar" OnClick="Btn_Registrar_Click"/>
				</div>
                        <div class="col-md-4 contact-form wthree" runat="server"  style="right: -825px; top: -1057px; width: 528px; margin-left: 40px; text-align: center;">
                    
                        <asp:CheckBox ID="CheckBox1" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
						<asp:Label ID="Lbl_ID" runat="server" Font-Size="20pt" Text="Cedula" CssClass="auto-style4"></asp:Label>
                        
                        <asp:CheckBox ID="CheckBox3" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style6" />
                        <asp:Label ID="Lbl_Passaporte" runat="server" Font-Size="20pt" Text="Pasaporte" CssClass="auto-style4"></asp:Label>
						<asp:TextBox ID="txt_ID" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox><br><br /><br />

                        
                        <asp:CheckBox ID="CheckBox2" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
                        <asp:Label ID="Lbl_Email" runat="server" Font-Size="20pt" Text="Email" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Email" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox><br><br /><br />

                        <asp:CheckBox ID="CheckBox4" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
                        <asp:Label ID="Lbl_Oficina" runat="server" Font-Size="20pt" Text="Oficina" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Oficina" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox><br><br /><br />

                        <asp:CheckBox ID="CheckBox5" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
                        <asp:Label ID="Lbl_Casa" runat="server" Font-Size="20pt" Text="Casa" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="Txt_Casa" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox><br><br /><br />

                        <asp:CheckBox ID="CheckBox6" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
                        <asp:Label ID="Lbl_Fax" runat="server" Font-Size="20pt" Text="Fax" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Fax" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox><br><br /><br />

                        <asp:CheckBox ID="CheckBox7" runat="server" oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" CssClass="auto-style8" />
                        <asp:Label ID="Lbl_Clular" runat="server" Font-Size="20pt" Text="Celular" CssClass="auto-style4"></asp:Label><br>
						<asp:TextBox ID="txt_Celular" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox>
				</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->  
	<!-- map -->
	<div class="map w3layouts">  
		<iframe src="https://www.google.com/maps/embed?pb=!1m40!1m12!1m3!1d31440.557848818746!2d-84.07543063028488!3d9.928150795620544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m25!3e0!4m5!1s0x8fa0e49fb2408d1b%3A0xecd61abaf1971ac1!2sULACIT%2C%20Tourn%C3%B3n%2C%20San%20Jos%C3%A9%2C%20San%20Francisco!3m2!1d9.9412355!2d-84.0774429!4m5!1s0x8fa0e36ed9f837eb%3A0x72a11f1a08641c54!2zUGxhemEgR29uesOhbGV6IFbDrXF1ZXosIEdvbnrDoWxleiBWw61xdWV6LCBTYW4gSm9zw6k!3m2!1d9.9252519!2d-84.0742049!4m5!1s0x8fa0e39e9aaaaaab%3A0x1f8f46d9d1207202!2sIglesia%20De%20Zapote%2C%20Zapote%2C%20San%20Jos%C3%A9!3m2!1d9.9201377!2d-84.0536509!4m5!1s0x8fa0e3bf9923854d%3A0x6902098cdd1bda50!2sSan%20Jos%C3%A9%2C%20Curridabat!3m2!1d9.914550499999999!2d-84.0386633!5e0!3m2!1ses!2scr!4v1576264554327!5m2!1ses!2scr" width="1900" height="800" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		
	</div>
	<!-- //map -->   

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