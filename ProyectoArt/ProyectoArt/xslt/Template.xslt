<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

	<xsl:template match="Datos">
		<html lang="en">

			<head>

				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

				<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100,200,300,400,500,600,700,800,900,display=swap" rel="stylesheet"/>
				<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
				<link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>-->
				<title>Sombrerero</title>

				<!-- Bootstrap -->
				<link href="css/bootstrap.min.css" rel="stylesheet"/>
				<link rel="stylesheet" href="css/fontawesome.css"/>
				<link rel="stylesheet" href="css/templatemo-cyborg-gaming.css"/>
				<link rel="stylesheet" href="css/owl.css"/>
				<link rel="stylesheet" href="css/animate.css"/>
				<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

			</head>

			<body>
				<div id="js-preloader" class="js-preloader">
					<div class="preloader-inner">
						<span class="dot"></span>
						<div class="dots">
							<span></span>
							<span></span>
							<span></span>
						</div>
					</div>
				</div>
				<!-- ***** Preloader End ***** -->

				<!-- ***** Header Area Start ***** -->
				<header class="header-area header-sticky">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<nav class="main-nav">
									<!-- ***** Logo Start ***** -->
									<a href="#" class="logo">
										<img src="img/logo4.png" alt=""/>
									</a>
									<!-- ***** Logo End ***** -->
									<!-- ***** Search End ***** -->
									<div class="search-input">
										<form id="search" action="#">
											<input type="text" placeholder="Type Something" id='searchText' name="searchKeyword" onkeypress="handle" />
											<i class="fa fa-search"></i>
										</form>
									</div>
									<!-- ***** Search End ***** -->
									<!-- ***** Menu Start ***** -->
									<ul class="nav">
										<xsl:for-each select="Opciones/Opcion">
											<xsl:choose>
												<xsl:when test="$TipoMenu=@Id">
													<li>
														<a href="{@Url}" class="active">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:when>
												<xsl:otherwise>
													<li>
														<a href="{@Url}">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
										<li>
											<a href="#">
												Perfil <img src="img/logo3.jpg" alt=""/>
											</a>
										</li>
									</ul>
									<a class='menu-trigger'>
										<span>Menu</span>
									</a>
									<!-- ***** Menu End ***** -->
								</nav>
							</div>
						</div>
					</div>
				</header>

				<xsl:choose>
					<xsl:when test="$TipoMenu=1">
						<xsl:call-template name="Galeria"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu=2">
						<xsl:call-template name="Contacto"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu=3">
						<xsl:call-template name="Conocenos"></xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>

				<footer>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<p>
									Copyright © 2023 <a href="#">Hermanos Sombrerero</a> All rights reserved.

									<br/>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a>  Distributed By <a href="https://themewagon.com" target="_blank" >ThemeWagon</a>
								</p>
							</div>
						</div>
					</div>
				</footer>

				<!-- Scripts -->
				<!-- Bootstrap core JavaScript -->
				<script src="js/jquery.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/isotope.min.js"></script>
				<script src="js/owl-carousel.js"></script>
				<script src="js/tabs.js"></script>
				<script src="js/popup.js"></script>
				<script src="js/custom.js"></script>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="Galeria">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-content">

						<!-- ***** Featured Games Start ***** -->
						<div class="row">
							<div class="col-lg-8">
								<div class="featured-games header-text">
									<div class="heading-section">
										<h4>
											<em>Galeria</em>
										</h4>
									</div>
									<div class="owl-features owl-carousel">
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteCalado']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fuste<br/>
													<span>Calado</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fuste<br/>
													<span>Normal</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNegro']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fuste<br/>
													<span>Negro</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteLaton']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fueste<br/>
													<span>Laton</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fuste<br/>
													<span>Normal</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']">
											<div class="item">
												<div class="thumb">
													<img src="{Imagen}" alt=""/>
													<div class="hover-effect">
														<h6>
															<xsl:value-of select="Precio"/>
														</h6>
													</div>
												</div>
												<h4>
													Fuste<br/>
													<span>Dorado</span>
												</h4>
												<ul>
													<li>
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
														<xsl:value-of select="Precio"/>
													</li>
												</ul>
											</div>
										</xsl:for-each>
									</div>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="top-downloaded">
									<div class="heading-section">
										<h4>
											<em>Mas</em> Vendido
										</h4>
									</div>
									<ul>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteCalado']">
											<li>
												<img src="{Imagen}" alt="" class="templatemo-item"/>
												<h4>Fuste</h4>
												<h6>Calado</h6>
												<span>
													<xsl:value-of select="Precio"/>
												</span>
												<div class="download">
													<a href="#">
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
													</a>
												</div>
											</li>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Hevillas']/Trabajo[@Nombre = 'HevillaNormal']">
											<li>
												<img src="{Imagen}" alt="" class="templatemo-item"/>
												<h4>Hevilla</h4>
												<h6>Calada</h6>
												<span>
													<xsl:value-of select="Precio"/>
												</span>
												<div class="download">
													<a href="#">
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
													</a>
												</div>
											</li>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<li>
												<img src="{Imagen}" alt="" class="templatemo-item"/>
												<h4>Fuste</h4>
												<h6>Normal</h6>
												<span>
													<xsl:value-of select="Precio"/>
												</span>
												<div class="download">
													<a href="#">
														<i class="fa-sharp fa-solid fa-dollar-sign"></i>
													</a>
												</div>
											</li>
										</xsl:for-each>
									</ul>
									<div class="text-button">
										<a href="#">Mas Fotos</a>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Featured Games End ***** -->

						<!-- ***** Live Stream Start ***** -->
						<div class="live-stream">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										<em>Trabajos Mas</em> Populares
									</h4>
								</div>
							</div>
							<div class="row">
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteCalado']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
										</div>
										<div class="down-content">
											<div class="avatar">
												<img src="img/avatar1.png" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
											</div>
											<span>
												<i class="fa-sharp fa-solid fa-dollar-sign"></i> Fuste
											</span>
											<h4>Calado</h4>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Hevillas']/Trabajo[@Nombre = 'HevillaNormal']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar2.svg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Hevilla
												</span>
												<h4>Normal</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Hevillas']/Trabajo[@Nombre = 'HevillaTexana']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar3.svg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Hevilla
												</span>
												<h4>Texana</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNegro']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar4.jpg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Fuste
												</span>
												<h4>Negro</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Freno']/Trabajo[@Nombre = 'FrenoNormal']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar5.svg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Freno
												</span>
												<h4>Normal</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Espuelas']/Trabajo[@Nombre = 'EspuelasAmericana']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar6.svg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Espeula
												</span>
												<h4>Americana</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Herrajes']/Trabajo[@Nombre = 'HerrajeNormal']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar2.svg" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Herraje
												</span>
												<h4>Normal</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Hevillas']/Trabajo[@Nombre = 'HevillaCalada']">
									<div class="col-lg-3 col-sm-6">
										<div class="item">
											<div class="thumb">
												<img src="{Imagen}" alt=""/>
											</div>
											<div class="down-content">
												<div class="avatar">
													<img src="img/avatar1.png" alt="" style="max-width: 46px; border-radius: 50%; float: left;"/>
												</div>
												<span>
													<i class="fa-sharp fa-solid fa-dollar-sign"></i> Hevilla
												</span>
												<h4>Calada</h4>
											</div>
										</div>
									</div>
								</xsl:for-each>
								<div class="col-lg-12">
									<div class="main-button">
										<a href="#">Mas Fotos</a>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Live Stream End ***** -->

					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="Contacto">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-content">
						<div class="row">
							<div class="col-lg-12">
								<div class="main-profile ">
									<div class="row">
										<div class="col-lg-4">
											<img src="img/gerardo.jpeg" alt="" style="border-radius: 23px;"/>
										</div>

										<div class="col-lg-4 align-self-center">
											<div class="main-info header-text">
												<span>Jefe</span>
												<h4>Gerardo Sombrerero</h4>
												<p>Dueño de Taller y lider en los trabajos realizados</p>
												<div class="main-border-button">
													<a href="#">Enviar Mensaje</a>
												</div>
											</div>
										</div>
										<div class="col-lg-4 align-self-center">
											<ul>
												<li>
													<div class="form-group">
														<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Nombre" required="true" />
													</div>
												</li>
												<li>
													<div class="form-group">
														<input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Correo Electronico" required="true"/>
													</div>
												</li>
												<li>
													<div class="form-group">
														<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Pedido" required="true" />
													</div>
												</li>
												<li>
													<div class="form-group">
														<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Descripcion" required="true" />
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<div class="clips">
												<div class="row">
													<div class="col-lg-12">
														<div class="heading-section">
															<h4>
																<em>Nuestros</em> Clientes
															</h4>
														</div>
													</div>
													<div class="col-lg-3 col-sm-6">
														<div class="item">
															<div class="thumb">
																<img src="img/rey.jpg" alt="" style="border-radius: 23px;"/>
															</div>
															<div class="down-content">
																<h4>Rey de la Montura</h4>
															</div>
														</div>
													</div>
													<div class="col-lg-3 col-sm-6">
														<div class="item">
															<div class="thumb">
																<img src="img/Ranchobajio.jpg" alt="" style="border-radius: 23px;"/>
															</div>
															<div class="down-content">
																<h4>Talavarteria Bajio</h4>
															</div>
														</div>
													</div>
													<div class="col-lg-3 col-sm-6">
														<div class="item">
															<div class="thumb">
																<img src="img/ranchorr.jpg" alt="" style="border-radius: 23px;"/>
															</div>
															<div class="down-content">
																<h4>Rancho RR</h4>
															</div>
														</div>
													</div>
													<div class="col-lg-3 col-sm-6">
														<div class="item">
															<div class="thumb">
																<img src="img/ranchoreinas.png" alt="" style="border-radius: 23px;"/>
															</div>
															<div class="down-content">
																<h4>Rancho IV Reinas</h4>
															</div>
														</div>
													</div>
													<div class="col-lg-12">
														<div class="main-button">
															<a href="#">Load More Clips</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Banner End ***** -->
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="Conocenos">
		<!--Api-->
		<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;sensor=false&amp;language=en"></script>
		<script src="js/geolocalizacion.js"></script>

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-content">

						<!-- ***** Featured Start ***** -->
						<div class="row">
							<div class="col-lg-12">
								<div class="feature-banner header-text">
									<div class="row">
										<div class="col-lg-4">
											<img src="img/rey.jpg" alt="" style="border-radius: 23px;"/>
										</div>
										<div class="col-lg-8">
											<div class="thumb">
												<video controls="" width="100%" poster="img/fuste123.jpg">
													<source src="img/Espuelas de Amozoc.mp4"></source>
												</video>
											</div>
											<br/>
											<audio controls="" style="width:100%">
												<source src="img/Anastacia.mpeg"></source>
											</audio>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Featured End ***** -->

						<!-- ***** Details Start ***** -->
						<div class="game-details">
							<div class="row">
								<div class="col-lg-12">
									<h2>Aqui Estamos</h2>
								</div>
								<div class="col-lg-12">
									<div class="content">
										<div class="row">
											<!--Mapita-->
											<div class="col-lg-12">
												<div id="google-map">
													<div id="mapa">mapa</div>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="main-border-button">
													<a href="#">Visitanos!</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Details End ***** -->

						<!-- ***** Other Start ***** -->
						<div class="other-games">
							<div class="row">
								<div class="col-lg-12">
									<div class="heading-section">
										<h4>
											<em>Nuestro Equipo</em> Trabajo
										</h4>
									</div>
								</div>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T1']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Sombrerero</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T2']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Sombrerero</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T3']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Sombrerero</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T4']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Cuautzi</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T5']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Cuautzi</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T6']">
									<div class="col-lg-6">
										<div class="item">
											<img src="{Imagen}" alt="" class="templatemo-item"/>
											<h4>
												<xsl:value-of select="Nombre"/>
											</h4>
											<span>Sanchez Sombrerero</span>
											<ul>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</ul>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</div>
						<!-- ***** Other End ***** -->

					</div>
				</div>
			</div>
		</div>
		<!--Script-->
		<script>
			<![CDATA[   
    $(document).ready(function(){
        //Asignamos la hora actual al control de hora
       //var timeControl = $("#contact_hora").get(0);
       var timeControl = document.querySelector('input[type="time"]');  
       var now = new Date(Date.now());
       
       //8:5
       // 08:05
       
      var horas = now.getHours();
       var minutos = now.getMinutes();
       if(horas < 10)
         {
            horas = "0" + horas;
         }
       if(minutos < 10)
         {
            minutos = "0" + minutos;
         } 
       
       <!--var formatted = now.getHours() + ":" + now.getMinutes();-->
      var formatted = horas + ":" + minutos;
      
      timeControl.value = formatted;
   
   //Validamos que se seleccione la fecha a partir del día actual
       var dd= now.getDate();
       var mm= now.getMonth()+1; //Enero = 0
       var yyyy= now.getFullYear();
       if(dd<10){dd='0'+dd;}
       if(mm<10){mm='0'+mm;}
       //2019-12-31    2019-09-01   dd/mm/yyyy 
       var today = yyyy + '-' + mm + '-' + dd;
       
       $("#contact_fecha").attr("min",today);
     
       getGeo();
       dibujaMapa(19.046943, -98.041922);
       
       <!--Latitud y Longitud-->
        
    });
  ]]>
		</script>
	</xsl:template>
	<xsl:template name="Home">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-content">

						<!-- ***** Banner Start ***** -->
						<div class="main-banner">
							<div class="row">
								<div class="col-lg-12">
									<div class="col-lg-6">
										<div class="header-text">
											<h6>
												<xsl:value-of select="NuestrosDatos/NombreEmpresa"/>
											</h6>
											<h4>
												<em>
													<xsl:value-of select="NuestrosDatos/Descripcion"/>
												</em>
											</h4>
											<h6>
												<xsl:value-of select="NuestrosDatos/Direccion"/>
											</h6>
											<div class="main-button">
												<a href="#">Browse Now</a>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="item">
											<img src="{NuestrosDatos/Imagen}"></img>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Banner End ***** -->

						<!-- ***** Most Popular Start ***** -->
						<div class="most-popular">
							<div class="row">
								<div class="col-lg-12">
									<div class="heading-section">
										<h4>
											<em>Nuestro Trabajo</em>
										</h4>
									</div>
									<div class="row">
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="{Imagen}" alt=""/>
													<h4>
														Fuste<br/><span>Normal</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/FDorado.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Dorado</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteCalado']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/FNegro.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Negro</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/FDorado.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Laton</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<div class="col-lg-3 col-sm-6">
												<div class="item inner-item">
													<img src="img/FApache.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Normal</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/FDorado.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Dorado</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteNormal']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/F2.jpg" alt=""/>
													<h4>
														Fuste<br/><span>Normal</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<xsl:for-each select="Trabajos/Tipos[@Nombre = 'Fustes']/Trabajo[@Nombre = 'FusteDorado']">
											<div class="col-lg-3 col-sm-6">
												<div class="item">
													<img src="img/FAzteca.jpg" alt=""/>
													<h4>
														Fuste<span>Normal</span>
													</h4>
													<ul>
														<li>
															<i class="fa-sharp fa-solid fa-dollar-sign"></i>
															<xsl:value-of select="Precio"/>
														</li>
													</ul>
												</div>
											</div>
										</xsl:for-each>
										<!--<div class="col-lg-12">
													<div class="main-button">
														<a href="browse.html">Discover Popular</a>
													</div>
												</div>-->
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Most Popular End ***** -->

						<!-- ***** Gaming Library Start ***** -->
						<div class="gaming-library">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										<em>Nuestro</em> Equipo
									</h4>
								</div>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T1']">
									<div class="item">
										<ul>
											<li>
												<img src="img/gerardo.jpeg" alt="" class="templatemo-item" />
											</li>
											<li>
												<h4>
													<xsl:value-of select="Nombre"/>
												</h4>
												<span>Sombrerero</span>
											</li>
											<li>
												<h4>Correro</h4>
												<span>
													<xsl:value-of select="Correo"/>
												</span>
											</li>
											<li>
												<h4>Telefono</h4>
												<span>
													<xsl:value-of select="Cel"/>
												</span>
											</li>
											<li>
												<h4>Actualmente</h4>
												<span>Activo</span>
											</li>
											<li>
												<div class="main-border-button ">
													<a href="#">Contacto</a>
												</div>
											</li>
										</ul>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T2']">
									<div class="item">
										<ul>
											<li>
												<img src="img/hector.jpeg" alt="" class="templatemo-item"/>
											</li>
											<li>
												<h4>
													<xsl:value-of select="Nombre"/>
												</h4>
												<span>Sombrerero</span>
											</li>
											<li>
												<h4>Correo</h4>
												<span>
													<xsl:value-of select="Correo"/>
												</span>
											</li>
											<li>
												<h4>Telefono</h4>
												<span>
													<xsl:value-of select="Cel"/>
												</span>
											</li>
											<li>
												<h4>Actualmente</h4>
												<span>Activo</span>
											</li>
											<li>
												<div class="main-border-button">
													<a href="#">Contacto</a>
												</div>
											</li>
										</ul>
									</div>
								</xsl:for-each>
								<xsl:for-each select="Equipo/Persona[@Nombre = 'T3']">
									<div class="item last-item">
										<ul>
											<li>
												<img src="img/logotaller.jpeg" alt="" class="templatemo-item" />
											</li>
											<li>
												<h4>
													<xsl:value-of select="Nombre"/>
												</h4>
												<span>Sombrerero</span>
											</li>
											<li>
												<h4>Correo</h4>
												<span>
													<xsl:value-of select="Correo"/>
												</span>
											</li>
											<li>
												<h4>Telefono</h4>
												<span>
													<xsl:value-of select="Cel"/>
												</span>
											</li>
											<li>
												<h4>Actualmente</h4>
												<span>Inactivo</span>
											</li>
											<li>
												<div class="main-border-button border-no-active">
													<a href="#">Donwloaded</a>
												</div>
											</li>
										</ul>
									</div>
								</xsl:for-each>
							</div>
							<!--<div class="col-lg-12">
										<div class="main-button">
											<a href="profile.html">View Your Library</a>
										</div>
									</div>-->
						</div>
						<!-- ***** Gaming Library End ***** -->
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
