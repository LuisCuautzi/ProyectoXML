<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>
	<xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

	<xsl:template match="Datos">
		<html lang="en">
			<head>
				<meta charset="utf-8"/>
				<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<title>
					<xsl:value-of select="Datos/NombreRestaurant"/>
				</title>
				<!-- Cafe House Templatehttp://www.templatemo.com/tm-466-cafe-house-->
				<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
				<link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>
				<link href="css/bootstrap.min.css" rel="stylesheet"/>
				<link href="css/font-awesome.min.css" rel="stylesheet"/>
				<link href="css/templatemo-style.css" rel="stylesheet"/>
				<link href="/estilos.css" rel="stylesheet"/>
				<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
				<script src="https://kit.fontawesome.com/f44b39115f.js" crossorigin="anonymous"></script>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

				<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
				<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
				<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

			</head>
			<body>
				<!-- Preloader -->
				<div id="loader-wrapper">
					<div id="loader"></div>
					<div class="loader-section section-left"></div>
					<div class="loader-section section-right"></div>
				</div>

				<!--Narvar-->
				<div class="superNav border-bottom py-2 bg-light">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 centerOnMobile">
								<select  class="me-3 border-0 bg-light">
									<option value="en-us">EN-US</option>
								</select>
								<span class="d-none d-lg-inline-block d-md-inline-block d-sm-inline-block d-xs-none me-3">
									<strong>
										<xsl:value-of select="NuestrosDatos/Correo"/>
									</strong>
								</span>
								<span class="me-3">
									<i class="fa-solid fa-phone"></i>
									<strong>
										<xsl:value-of select=" NuestrosDatos/Telefono"/>
									</strong>
								</span>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 d-none d-lg-block d-md-block-d-sm-block d-xs-none text-end">
								<span class="me-3">
									<i class="fa-solid fa-truck text-muted me-1"></i>
									<a class="text-muted" href="#">Shipping</a>
								</span>
								<span class="me-3">
									<i class="fa-solid fa-file  text-muted me-2"></i>
									<a class="text-muted" href="#">Policy</a>
								</span>
							</div>
						</div>
					</div>
				</div>
				<nav class="navbar navbar-expand-lg bg-white sticky-top navbar-light p-3 shadow-sm">
					<div class="container">
						<a class="navbar-brand" href="#">
							<i class="fa-solid fa-shop me-2"></i>
							<strong>GEAR SHOP</strong>
						</a>
						<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
							<div class="input-group">
								<span class="border-warning input-group-text bg-warning text-white">
									<i class="fa-solid fa-magnifying-glass"></i>
								</span>
								<input type="text" class="form-control border-warning" style="color:#7a7a7a"/>
								<button class="btn btn-warning text-white">Search</button>
							</div>
						</div>
						<div class=" collapse navbar-collapse" id="navbarNavDropdown">
							<div class="ms-auto d-none d-lg-block">
								<div class="input-group">
									<span class="border-warning input-group-text bg-warning text-white">
										<i class="fa-solid fa-magnifying-glass"></i>
									</span>
									<input type="text" class="form-control border-warning" style="color:#7a7a7a"/>
									<button class="btn btn-warning text-white">Search</button>
								</div>
							</div>
							<ul class="navbar-nav ms-auto ">
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase active" aria-current="page" href="#">Ofertas</a>
								</li>
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">Home</a>
								</li>
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">Contacto</a>
								</li>
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">Galeria</a>
								</li>
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">Conocenos</a>
								</li>
							</ul>
							<ul class="navbar-nav ms-auto ">
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">
										<i class="fa-solid fa-cart-shopping me-1"></i> Carrito
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link mx-2 text-uppercase" href="#">
										<i class="fa-solid fa-circle-user me-1"></i> Cuenta
									</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
				<!--Narvar-->

				<!--Carusel-->

				<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="10000">
							<center>
							<img src="/img/img1.jpg" class="d-block w-80" alt="..."/>
							</center>
							<div class="carousel-caption d-none d-md-block">
								<h5>
									<xsl:value-of select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']/Descripcion"/>
								</h5>
								<p>Some representative placeholder content for the first slide.</p>
							</div>
							</div>
						<div class="carousel-item" data-bs-interval="2000">
							<center>
							<img src="/img/img2.jpg" class="d-block w-80" alt="..."/>
							</center>
							<div class="carousel-caption d-none d-md-block">
								<h5>
									<xsl:value-of select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteLaton']/Descripcion"/>
								</h5>
								<p>Some representative placeholder content for the second slide.</p>
							</div>
							</div>
						<div class="carousel-item">
							<center>
							<img src="/img/img3.jpg" class="d-block w-80" alt="..."/>
							</center>
							<div class="carousel-caption d-none d-md-block">
								<h5>
									<xsl:value-of select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteLaton']/Descripcion"/>
								</h5>
								<p>Some representative placeholder content for the third slide.</p>
							</div>
							</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

				<!--Carusel-->


				<footer>
					<div class="tm-black-bg">
						<div class="container">
							<div class="row margin-bottom-60">
								<div class="col-lg-5 col-md-5 tm-footer-div">
									<h3 class="tm-footer-div-title">About Us</h3>
									<p class="margin-top-15">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>
									<p class="margin-top-15">Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
								</div>
								<div class="col-lg-4 col-md-4 tm-footer-div">
									<h3 class="tm-footer-div-title">Get Social</h3>
									<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante.</p>
									<div class="tm-social-icons-container">
										<a href="#" class="tm-social-icon">
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-linkedin"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-youtube"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-behance"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="container">
							<div class="row tm-copyright">
								<p class="col-lg-12 small copyright-text text-center">Copyright 2084 Your Cafe House</p>
							</div>
						</div>
					</div>
				</footer>
				<!-- JS -->
				<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
				<!-- jQuery -->
				<script type="text/javascript" src="js/templatemo-script.js"></script>
				<!-- Templatemo Script -->

			</body>
		</html>


	</xsl:template>
</xsl:stylesheet>
