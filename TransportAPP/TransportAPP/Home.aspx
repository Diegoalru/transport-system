<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TransportAPP.Home" %>


<!DOCTYPE html>
<html lang="es">
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
<link rel="stylesheet" href="Css/css/flexslider.css" type="text/css" media="screen" />  <!-- flexslider-CSS --> 
<link href="Css/css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->  
<!-- //Custom Theme files -->  
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts -->
    <style type="text/css">
        .auto-style1 {
            font-size: 40px;
            color: #FFFFFF;
            position: center
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
						<h1><a href="index.html">Transportes Estudiantiles (TSD)</a></h1> 
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<div class="w3menu navbar-right">
							<ul class="nav navbar">
								<li><a href="index.html" class="active">Inicio</a></li>
								<li><a href="Registro.aspx">Registarse</a></li> 
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
								<li><a href="contact.html">Contacto de Servicio</a></li>
							</ul>
						</div> 
						<div class="clearfix"> </div>  
					</div>
				</div>	
			</div>	
			<!-- //navigation -->
			<!-- banner-text -->
			<div class="banner-text agileinfo"> 
				<div class="container text-center">
					<h1 class="auto-style1">El transporte diseñado <span>especialmente</span> <span>para estudiantes</span></h1>
				</div>
			</div>
			<!-- //banner-text -->  
			<!-- arrow bounce --> 
			<div class="agileits-arrow bounce animated"><a href="#welcome" class="scroll"><i class="fa fa-angle-down" aria-hidden="true"></i></a></div>
			<!-- //arrow bounce -->  
		</div>
	</div>
	<!-- //banner --> 
	<!-- data-toggle="modal" data-target="#myModal2" -->

	<div class="welcome" id="welcome">
		<div class="container"> 
		<div class="features">
		<div class="container">   
			<div class="wthree-features-row">
				<div class="col-md-6 features-w3grid"> 
					<div class="features-row2"> 
						<div class="features-w3lleft">  
							<h4 class="text-left">Nuevo Usuario</h4>
							<p>Ingrese su información para registrarse</p>
						</div>
						<div class="features-w3lright">
							<a href="Registro.apsx" class="w3ls-login" >Registro</a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6 features-w3grid">  
					<div class="features-row2"> 
						<div class="features-w3lleft">  
							<h4 class="text-left">Ya eres usuario </h4>
							<p>Click Aquí</p>
						</div>
						<div class="features-w3lright">
							<a href="#" class="w3ls-login" data-toggle="modal" data-target="#myModal1">Login</a>
						</div>
						<div class="clearfix"> </div>
					</div> 
				</div> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div><br><br><br>  
			<div class="agileits-title">
				<h3>¡Todo lo que buscaba con nosotros!</h3>
			</div> 
			<div class="welcomerow-agileinfo">
				<h5>Somos una plataforma con gran visión y emprendimiento tico...</h5>
				<p>Nuestra motivación nos mueve por revolucionar la manera en que se desplazan los estudiantes y la seguridad para los padres, uso de medios de pago actuales, implementando historial de movimientos y seguridad por tracking</p>
			</div> 
			<div class="w3-welcome-grids">
				<div class="col-md-3 col-xs-6 w3l-welcome-grid"> 
					<img src="Css/images/schedule.gif" alt=" " class="img-responsive"/>   
					<div class="agileits-welcome-info">
						<h4 class="text-left">Historial y Horarios</h4>
						<p>Puedes ver todas las actualizaciones e historico por estudiante y fecha desde nuestro sitio</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6 w3l-welcome-grid">
					<img src="Css/images/remplazo img 3.jpg" alt=" " class="img-responsive"/>   
					<div class="agileits-welcome-info">
						<h4 class="text-left">GPS localización</h4>
						<p>Con las últimas tendencias en tecnología e incorporacion de seguimiento GPS para mayor seguridad</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6 w3l-welcome-grid">
					<img src="Css/images/modernbus.gif" alt=" " class="img-responsive"/>   
					<div class="agileits-welcome-info">
						<h4 class="text-left">Transporte moderno </h4>
						<p>Con una flotilla superior al año 2010, modernos y confortables</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6 w3l-welcome-grid">
					<img src="Css/images/responsive web.jpg" alt=" " class="img-responsive"/>   
					<div class="agileits-welcome-info">
						<h4 class="text-justify">Responsive Web</h4>
						<p>Nuestra plataforma tiene la capacidad de adaptarse a los diferentes formatos de dispositivos móviles</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div> 
		</div>
	</div>
	<!-- //welcome -->
	<!-- services -->
	<div class="services">
		<div class="container">
			<div class="agileits-title">
				<h3>Servicios</h3>
			</div>  
			<div class="services-w3lsrow">
				<div class="col-md-3 col-sm-3 col-xs-6 services-grids">  
					<i class="fa fa-gears icon" aria-hidden="true"></i> 
					<h4 class="text-left">Configuración</h4>
					<p>Nuestra página contiene todas las disponibilidades de manera sencilla para el usuario, por registro de cuenta</p>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-group icon" aria-hidden="true"></i> 
						<h4 class="text-left">Accesibilidad </h4>
						<p>Puedes ingresar desde cualquier dispositivo con una conexión a internet, para controlar y verificar estado</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-briefcase icon" aria-hidden="true"></i>
						<h4>Seguridad</h4>
						<p>Utilice esta poderosa herramienta para llevar el control de los viajes, asistencia y control de conductores</p>
					</div>
				</div> 	
				<div class="col-md-3 col-sm-3 col-xs-6 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-list-alt icon" aria-hidden="true"></i>
						<h4>Alertas de Noticias</h4>
						<p>Quedate enterado de las ultimas noticias, cambios, rutas, modificaciones o enlace con el centro educativo y más..."Chepe Bus" </p>
					</div>
				</div> 
				<div class="clearfix"> </div>
			</div>	 
		</div>
	</div>	
	<!-- //services -->	
	<!-- testimonials -->
	<!--
	<div class="testimonials">
		<div class="container">  
			<div class="agileits-title">
				<h3>Testimonials</h3>
			</div>  
			<div class="w3_testimonials_grids">
				<section class="slider">
					<div class="flexslider1">
						<ul class="slides">
							<li>	
								<div class="w3_testimonials_text">
									<img src="images/t1.jpg" alt=" " class="img-responsive" />
									<h4 class="agiletext-style"><i>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
										impedit quo minus id quod maxime placeat facere possimus, omnis voluptas.</i></h4>
									<h5>John Frank</h5>
									<p>Transport Agent</p>
								</div>
							</li>
							<li>	
								<div class="w3_testimonials_text">
									<img src="images/t2.jpg" alt=" " class="img-responsive" />
									<h4 class="agiletext-style"><i>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
										impedit quo minus id quod maxime placeat facere possimus, omnis voluptas.</i></h4>
									<h5>Michael Doe</h5>
									<p>Transport Agent</p>
								</div>
							</li>
							<li>	
								<div class="w3_testimonials_text">
									<img src="images/t3.jpg" alt=" " class="img-responsive" />
									<h4 class="agiletext-style"><i>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
										impedit quo minus id quod maxime placeat facere possimus, omnis voluptas.</i></h4>
									<h5>Thomas Carl</h5>
									<p>Transport Agent</p>
								</div>
							</li>
						</ul>
					</div>
				</section> 
			</div>
		</div>
	</div> -->
	<!-- //testimonials -->

	<!-- subscribe -->
	
	<div class="subscribe jarallax">
		<div class="container">
			<div class="agileits-title title2">
				<h3>Subscribase</h3>
			</div>   
			<p>Reciba información detallada acerca de nuestros servicios para contratación y costos </p>
			<form>
				<input type="email" name="email" placeholder="Email" class="user" required="">
				<input type="submit" value="Subscribirse">
			</form>
			<p class="spam">No compartimos ningún tipo de información sin autorización</p>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- features -->
	
	<!-- //features -->
	<!-- login modal -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
					<img src="Css/images/img5.png" class="img-responsive login-img" alt=""/>
					<h4 class="modal-title">No esperés...Logueate</h4>
				</div>
				<div class="modal-body modal-body-sub"> 
					<h3>Login a tu cuenta</h3>
					<div class="register">
						<form action="#" method="post">			
							<input name="Email" placeholder="Email" type="text" required="">						
							<input name="Password" placeholder="Contraseña" type="password" required="">										
							<div class="sign-up">
								<input type="submit" value="Logueate"/>
							</div>
						</form>
					</div>  
				</div>
			</div>
		</div>
	</div> 
	<!-- //login modal -->	
	<!-- register modal -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
					<img src="Css/images/img5.png" class="img-responsive login-img" alt=""/>
					<h4 class="modal-title">No esperés...Registrate </h4>
				</div>
				<div class="modal-body modal-body-sub"> 
					<div class="modal_body_left modal_body_left1"> 
						<h3>Registra una cuenta</h3>
						<div class="register">
							<form action="#" method="post">			
								<input placeholder="Nombre" name="Name" type="text" required="">
								<input placeholder="Email" name="Email" type="email" required="">	
								<input placeholder="Contraseña" name="Password" type="password" required="">	
								<input placeholder="Confirmar Contraseña" name="Password" type="password" required="">
								<div class="sign-up">
									<input type="submit" value="Registro"/>
								</div>
							</form>
						</div> 		 
					</div>  
				</div>
			</div>
		</div>
	</div> 
	<!-- //register modal -->	
	<!-- footer -->
	

				<!-- <div class="col-md-4 col-sm-4 footer-wthreegrid footer-tags">
					<h3>Tag Cloud</h3>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="codes.html">Codes</a></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div> 
				<div class="clearfix"> </div>*/-->
			</div>  
		</div>
	</div>
	<div class="copy-right"> 
		<div class="container">
		</div> 
	</div> 
	<!-- //footer -->   
	<!-- footer modal -->
	<div class="modal about-modal w3-agileits fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body">
					<img src="images/img1.jpg" class="img-responsive" alt=""> 
					<h5>Cras rutrum iaculis enim</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at. Donec fringilla lacus eu pretium rutrum. Cras aliquet congue ullamcorper. Etiam mattis eros eu ullamcorper volutpat. Proin ut dui a urna efficitur varius. uisque molestie cursus mi et congue consectetur adipiscing elit cras rutrum iaculis enim, Lorem ipsum dolor sit amet, non convallis felis mattis at. Maecenas sodales tortor ac ligula ultrices dictum et quis urna. Etiam pulvinar metus neque, eget porttitor massa vulputate. </p>
				</div> 
			</div>
		</div>
	</div>
	<!-- //footer modal -->   
	<!-- js --> 
	<script src="js/jquery-2.2.3.min.js"></script> 
	<script src="js/SmoothScroll.min.js"></script> 
	<script src="js/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>  
	<!-- //js -->
	<!-- FlexSlider --> 
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
	<!-- //End-FlexSlider --> 
	<!-- flexSlider -->  
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider1').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
	<!-- //flexSlider -->	
	<!-- start-smooth-scrolling --> 
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	 
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->  
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>