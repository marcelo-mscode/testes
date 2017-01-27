<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="for" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<c:import url="../comum_/header.jsp" />
	
	<style type="text/css">#pagIndex{color: #fff !important;}</style>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(resources/images/capa.png);background-size: 60%;background-position-x: 50%;background-position-y: 100%;">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h2>comando</h2>
							<h1>x Supremacia br x</h1>
							<h2>GTA V Online</h2>
							<p>
								<a href="#" class="btn btn-primary btn-lg">Saiba mais</a> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div id="gtco-features">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-eye"></i>
						</span>
						<h3>Retina Ready</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
						<p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-command"></i>
						</span>
						<h3>Fully Responsive</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
						<p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-power"></i>
						</span>
						<h3>Web Starter</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
						<p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-features-2">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Watch Our Videos</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4">
					<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
						<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
						<div class="overlay"></div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
						<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
						<div class="overlay"></div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
						<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
						<div class="overlay"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-counter" class="gtco-bg gtco-cover gtco-counter" style="background-image:url(resources/images/img_bg_2.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="display-t">
					<div class="display-tc">
						<div class="col-md-3 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-eye"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="22070" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Soma de horas jogadas de todos os membros</span>

							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-anchor"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="97" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Happy Clients</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-briefcase"></i>
								</span>
								<span class="counter js-counter" data-from="0" data-to="402" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Projects Done</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-clock"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="212023" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Hours Spent</span>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-testimonial">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Testimonial</h2>
				</div>
			</div>
			<div class="row animate-box">
				
			
				<div class="owl-carousel owl-carousel-fullwidth ">
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/person_1.jpg" alt="user">
							</figure>
							<span>Jean Doe, via <a href="#" class="twitter">Twitter</a></span>
							<blockquote>
								<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
						</div>
					</div>
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/person_2.jpg" alt="user">
							</figure>
							<span>John Doe, via <a href="#" class="twitter">Twitter</a></span>
							<blockquote>
								<p>&ldquo;Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
						</div>
					</div>
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/person_3.jpg" alt="user">
							</figure>
							<span>John Doe, via <a href="#" class="twitter">Twitter</a></span>
							<blockquote>
								<p>&ldquo;Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
							</blockquote>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-services">
		<div class="gtco-container">
			
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>What We Offer</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>

			<div class="row animate-box">
				
				<div class="gtco-tabs">
					<ul class="gtco-tab-nav">
						<li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-command"></i></span><span class="hidden-xs">Web Design</span></a></li>
						<li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">Online Marketing</span></a></li>
						<li><a href="#" data-tab="3"><span class="icon visible-xs"><i class="icon-bag"></i></span><span class="hidden-xs">E-Commerce</span></a></li>
						<li><a href="#" data-tab="4"><span class="icon visible-xs"><i class="icon-box"></i></span><span class="hidden-xs">Logo &amp; Branding</span></a></li>
					</ul>

					<!-- Tabs -->
					<div class="gtco-tab-content-wrap">

						<div class="gtco-tab-content tab-content active" data-tab-content="1">
							<div class="col-md-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6">
								<h2>Web Design</h2>
								<p>Paragraph placeat quis fugiat provident veritatis quia iure a debitis adipisci dignissimos consectetur magni quas eius nobis reprehenderit soluta eligendi quo reiciendis fugit? Veritatis tenetur odio delectus quibusdam officiis est.</p>

								<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis molestias totam fugiat soluta accusantium omnis quod similique placeat at. Dolorum ducimus libero fuga molestiae asperiores obcaecati corporis sint illo facilis.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Keep it simple</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">Less is more</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
								</div>

							</div>
						</div>

						<div class="gtco-tab-content tab-content" data-tab-content="2">
							<div class="col-md-6 col-md-push-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6 col-md-pull-6">
								<h2>Online Marketing</h2>
								<p>Paragraph placeat quis fugiat provident veritatis quia iure a debitis adipisci dignissimos consectetur magni quas eius nobis reprehenderit soluta eligendi quo reiciendis fugit? Veritatis tenetur odio delectus quibusdam officiis est.</p>

								<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis molestias totam fugiat soluta accusantium omnis quod similique placeat at. Dolorum ducimus libero fuga molestiae asperiores obcaecati corporis sint illo facilis.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Ready to use</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">100% Satisfaction</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
								</div>

							</div>
						</div>

						<div class="gtco-tab-content tab-content" data-tab-content="3">
							<div class="col-md-6 col-md-push-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.jpg); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6 col-md-pull-6">
								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>Retina Ready</h3>
										<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
									</div>
								</div>

								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>Fully Responsive</h3>
										<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
									</div>
								</div>

								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>Ready To Use</h3>
										<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
									</div>
								</div>
								
								
							</div>
						</div>

						<div class="gtco-tab-content tab-content" data-tab-content="4">
							<div class="col-md-6">
								<div class="icon icon-xlg">
									<i class="icon-box"></i>
								</div>
							</div>
							<div class="col-md-6">
								<h2>Logo &amp; Branding</h2>
								<p>Paragraph placeat quis fugiat provident veritatis quia iure a debitis adipisci dignissimos consectetur magni quas eius nobis reprehenderit soluta eligendi quo reiciendis fugit? Veritatis tenetur odio delectus quibusdam officiis est.</p>

								<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis molestias totam fugiat soluta accusantium omnis quod similique placeat at. Dolorum ducimus libero fuga molestiae asperiores obcaecati corporis sint illo facilis.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Pixel perfect</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">User Interface Expert</h2>
										<p>Ullam dolorum iure dolore dicta fuga ipsa velit veritatis</p>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>


	<div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Fale conosco</h2>
					<p>Em caso de dúvidas, mande-nos um email.</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-12">
					<form class="form-inline">
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Your email">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="name" class="sr-only">Name</label>
								<input type="text" class="form-control" id="name" placeholder="Your name">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<button type="submit" class="btn btn-default btn-block">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- <footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-pb-md">
				<div class="col-md-2 col-sm-4 col-xs-6 ">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Creative Design</a></li>
						<li><a href="#">Branding</a></li>
						<li><a href="#">Illustration</a></li>
						<li><a href="#">Subscribe</a></li>
						<li><a href="#">Monthly Event</a></li>
					</ul>
				</div>
				
				<div class="clearfix visible-xs-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Shop</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="clearfix visible-xs-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Deelopers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>
				
			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://gettemplates.co/" target="_blank">GetTemplates.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer> -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="resources/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="resources/js/main.js"></script>

	</body>
</html>

