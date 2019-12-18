<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TransportAPP.index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Transportes TSD</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="source/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="source/css/animate.css">
    <link rel="stylesheet" type="text/css" href="source/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="source/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="source/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="source/css/aos.css">
    <link rel="stylesheet" type="text/css" href="source/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="source/css/bootstrap-datepicker.css">
    <link rel="stylesheet" type="text/css" href="source/css/jquery.timepicker.css">
    <link rel="stylesheet" type="text/css" href="source/css/flaticon.css">
    <link rel="stylesheet" type="text/css"href="source/css/icomoon.css">
    <link rel="stylesheet" type="text/css" href="source/css/style.css">
    <link rel="icon" type="image/png" href="source/images/iconTSD.png"/>
  </head>

  <body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
        <a class="navbar-brand" href="index.html"><img src="source/images/transportTSD.png" style ="width = "70" height ="70"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Inicio</a></li>
	          <li class="nav-item"><a href="#Servicios" class="nav-link">Servicios</a></li>
	          <li class="nav-item"><a href="#Acercade" class="nav-link">Acerca de</a></li>
            <li class="nav-item"><a href="#clientes" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="#Contacto" class="nav-link">Contacto</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    
    <div class="hero-wrap" style="background-image: url(source/images/busscolar.jpg);" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center">
          <div class="col-lg-6 col-md-6 ftco-animate d-flex align-items-end">
          	<div class="text">
	            <h1 class="mb-4">El transporte diseñado <span>especialmente</span> <span>para estudiantes</span></h1><br><br><br>  
	            <p style="font-size: 18px;">Creemos que la tecnología se puede usar para el beneficio y seguridad de todos, por lo que desde el 2017 somos el único transporte en controlar la asistencia de los estudiantes con lectores faciales.</p>
	            <a href="https://vimeo.com/45830194" class="icon-wrap popup-vimeo d-flex align-items-center mt-4">
	            </a>
            </div>
          </div>
          <div class="col-lg-2 col"></div>
          <div class="col-lg-4 col-md-6 mt-0 mt-md-5 d-block">
          	<form action="#" class="request-form ftco-animate">
          		<h2>Viaja seguro con nosotros</h2>
              <div class="form-group">
                <label for="" class="label">Primer nombre</label>
                <input type="text" class="form-control" placeholder="Primer nombre">
              </div>
              <div class="form-group">
                <label for="" class="label">Segundo nombre</label>
                <input type="text" class="form-control" placeholder="Segundo nombre">
              </div>
              <div class="form-group">
                <label for="" class="label">Primer apellido</label>
                <input type="text" class="form-control" placeholder="Primer apellido">
              </div>
              <div class="form-group">
                <label for="" class="label">Segundo apellido</label>
                <input type="text" class="form-control" placeholder="Segundo apellido">
              </div>
                <div class="form-group">
                <label for="" class="label">Sexo</label>
                <input type="text" class="form-control" id="Sexo" placeholder="Sexo">
              </div>
                <div class="form-group ml-2">
                  <label for="" class="label">Fecha de Nacimiento</label>
                  <input type="text" class="form-control" id="book_off_date" placeholder="Fecha de Nacimiento">
                </div>
	            <div class="form-group">
	              <input type="submit" value="Search Vehicle" class="btn btn-primary py-3 px-4">
	            </div>
	    			</form>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section services-section ftco-no-pt ftco-no-pb" id="Servicios">
      <div class="container">
      	<div class="row justify-content-center">
          <div class="col-md-12 heading-section text-center ftco-animate mb-5">
            <br><br><br>
            <h2 class="mb-2">Nuestros servicios</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="item">
              	<div class="testimony-wrap text-center py-4 pb-5">
	              	<div class="user-img mb-4" style="background-image: url(source/images/49944.png)">
                  </div>
	                <h3 class="heading mb-0 pl-3">Incentivamos la educación</h3><br>
                <p>¡Tenemos una beca para tí! Consúltanos como obtenerla.</p>
              </div>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="item">
              	<div class="testimony-wrap2 text-center py-4 pb-5">
	              	<div class="user-img2 mb-4" style="background-image: url(source/images/huella.png)">
                  </div>
	                <h3 class="heading mb-0 pl-3">Siempre conectados</h3><br>
                <p>Sin cupos limitados, servicio exclusivo a cada institución y control de asistencia por reconocimiento facial.</p>
              </div>
            </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="item">
              	<div class="testimony-wrap2 text-center py-4 pb-5">
	              	<div class="user-img2 mb-4" style="background-image: url(source/images/wifi2.png)">
                  </div>
	                <h3 class="heading mb-0 pl-3">WiFi-Gratis</h3><br>
                <p>Navega con el internet gratis del autobús además, puedes buscar música en tiempo real y reproducirla en los parlantes principales para hacer del viaje toda una experiencia.</p>
              </div>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="item">
              	<div class="testimony-wrap2 text-center py-4 pb-5">
	              	<div class="user-img2 mb-4" style="background-image: url(source/images/amigos.png)">
                  </div>
	                <h3 class="heading mb-0 pl-3">Somos amigos</h3><br>
                  <p>Disfruta de viajar en el transporte donde van todos tus amigos.</p>
              </div>
            </div>      
          </div>
        </div>
      </div><br><br><br>
    </section>

    <section class="ftco-section services-section img" style="background-image: url(source/images/buss.jpg);" id="Acercade">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
          	<span class="">Como trabajamos</span>
            <h2 class="mb-3">¿Qué nos hace diferentes?</h2>
            <span class="subheading">Somos pioneros en uso de tecnología amigable en sistemas de transporte de estudiantes, para brindar mayor seguridad, confort y un viaje extraordinario que solo con Transportes TSD puedes tener.</span>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-select"></span></div>
                <h3>Lectores Faciales</h3>
                <p>Somos los únicos en controlar el uso del servicio de transporte por medio de lectores faciales.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                <h3>WiFi en los autobuses</h3>
                <p>Desde el año 2012 brindamos internet gratuito en todas las unidades de transporte.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-online-booking"></span></div>
                <h3>Grupos de WhatsApp</h3>
                <p>Manejamos grupos de WhatsApp para tener una estrecha comunicación con los estudiantes y los padres de familia.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
                <h3>Paga en cualquier parte del mundo</h3>
                <p>Primer transporte de estudiantes que se puede pagar en cualquier BN Servicios del país.</p>
              </div>
            </div>      
          </div>
    		</div>
        </div>
    	</div>
    </section>

    <section class="ftco-section testimony-section" id="clientes">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
          	<span class="subheading">Blog</span>
            <h2 class="mb-3">Nuestros clientes felices</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(source/images/persona5.jpg)">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">Excelente servicio que ofrece el transporte TSD, estoy muy sastifecha de encargarles a mi hijo, esta muy seguro.</p>
                    <p class="name">Sara Lopez</p>
                    <span class="position">Madre de Sebastian</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(source/images/person_2.jpg)">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">Gracias por tanta seguridad que posee en los autobuses, ya no paso tan preocupado por mis hijas, ahora puedo trabajar tranquilo.</p>
                    <p class="name">Carlos Vargas</p>
                    <span class="position">Padre de Sofia y Clara</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(source/images/person_3.jpg)">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">Fantastico servicio, la idea de los grupos de WhatsApp ha sido genial, gracias a esto puedo estar al tanto de mi hijo.</p>
                    <p class="name">Estaban Castro</p>
                    <span class="position">Padre de Roberto</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(source/images/person_4.jpg)">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">Encantado de obtener el servicio de transportes, es un servicio exclusivo y con grandes privilegios.</p>
                    <p class="name">Gerzan Jimenez</p>
                    <span class="position">Padre de Hillary</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(source/images/person_1.jpg)">
                  </div>
                  <div class="text pt-4">
                    <p class="mb-4">Buen servicio, los lectores faciales es un sistema de seguridad grandioso, muy bien implementado, gracias por cuidar a mis hijos.</p>
                    <p class="name">Gustavo Salazar</p>
                    <span class="position">Padre de Juan y Eddy</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section" id="Contacto">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Nuestro servicio</h2>
              <p>Brindamos mayor seguridad, confort y un viaje extraordinario que solo con transportes TSD puede tener.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Información</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Acerca de</a></li>
                <li><a href="#" class="py-2 d-block">Servicios</a></li>
                <li><a href="#" class="py-2 d-block">Terminos and Condiciones</a></li>
                <li><a href="#" class="py-2 d-block">Precios</a></li>
                <li><a href="#" class="py-2 d-block">Privacidad &amp; Politica</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Atención al cliente</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Metodos de pagos</a></li>
                <li><a href="#" class="py-2 d-block">Viajes</a></li>
                <li><a href="#" class="py-2 d-block">Como trabajamos</a></li>
                <li><a href="#" class="py-2 d-block">Contactanos</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">¿Tienes alguna pregunta?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">San Isidro de Heredia, Costa Rica</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">(506) 2268-9289</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">transportTSD@transportTSD.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved.</p><br>
            <a class="navbar-brand" href="index.html"><img src="source/images/transportTSD.png" style = width = "70" height ="70"></a>
          </div>
        </div>
      </div>
    </footer>
    
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script type="text/javascript" src="source/js/jquery.min.js"></script>
  <script type="text/javascript" src="source/js/jquery-migrate-3.0.1.min.js"></script>
  <script type="text/javascript" src="source/js/popper.min.js"></script>
  <script type="text/javascript" src="source/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="source/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="source/js/jquery.waypoints.min.js"></script>
  <script type="text/javascript" src="source/js/jquery.stellar.min.js"></script>
  <script type="text/javascript" src="source/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="source/js/jquery.magnific-popup.min.js"></script>
  <script type="text/javascript" src="source/js/aos.js"></script>
  <script type="text/javascript" src="source/js/jquery.animateNumber.min.js"></script>
  <script type="text/javascript" src="source/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="source/js/jquery.timepicker.min.js"></script>
  <script type="text/javascript" src="source/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script type="text/javascript" src="source/js/google-map.js"></script>
  <script type="text/javascript" src="source/js/main.js"></script>
    
  </body>
</html>