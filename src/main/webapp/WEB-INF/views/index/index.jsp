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
						<div class="display-tc">
							
							<div class="box-opacity animated fadeInDownBig">
								<h2>comando</h2>
								<h1>x Supremacia br x</h1>
								<h2>GTA V Online</h2>
								<p>
									<a href="#comeco" class="btn btn-primary btn-lg">Saiba mais</a> 
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<a name="comeco"></a>
	<div id="gtco-features">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animated fadeInUp">
						<span class="icon">
							<!-- <i class="icon-eye"></i> -->
							<img alt="" src="resources/images/guerra.png">
						</span>
						<h3>FOCO</h3>
						<p>O foco do comando é <b>GUERRA</b> na sessão. Treinamos para guerra,
						conversamos sobre guerra e estamos online para guerra. Gosta de Guerra ? Então seja bem-vindo.</p>
						<!-- <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p> -->
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<img alt="" src="resources/images/diversao.png">
						</span>
						<h3>DIVERSÃO</h3>
						<p>Foi em meio as tretas e brigas contra os players que fizemos grandes amigos.
						Embora gostemos das guerras na sessão, tudo fazemos para nos divertir. Temos rivais e não inimigos.</p>
						<!-- <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p> -->
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<img alt="" src="resources/images/128x128.png">
						</span>
						<h3>Ajuda</h3>
						<p>Nossa cultura é de ajuda mutua entre os membros, ajudando com as muambas, com o MC,
						com os trabalhamos de Magnata, e com a evolução de cada jogador.</p>
						<!-- <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-features-2">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>ÚLTIMOS VIDEOS DO NOSSO CANAL NO YOUTUBE</h2>
					<p>Algumas vezes nossos membros gravam vídeos nas sessões e postam no nosso canal no youtube, veja alguns abaixo, aproveite e inscreva-se.</p>
					<p><a href="https://www.youtube.com/channel/UCWIw5scPuM9G89C9_ZOx4Qg" class="btn btn-primary btn-outline" target="_blank">xSUPREMACIABRx YOUTUBE</a></p>
				</div>
			</div>
			
			<div class="row">
			
				<c:forEach items="${videos}" var="videos">
					<div class="col-md-4">
					<span>${videos.titulo}<br>"${videos.subTitulo}"<br><fmt:formatDate value="${videos.postadoEm}" pattern="dd/MM/YYYY"/></span>
						<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(${videos.nomeImage}); ">
							<a href="${videos.url}" class="popup-vimeo"><i class="icon-video"></i></a>
							<div class="overlay"></div>
						</div>
					</div>
				</c:forEach>
			
				<!-- <div class="col-md-4">
				<span>Mata-mata#2<br>"CHORA TECLADO, CAMPOSBR LADRÃO"<br>29/01/2017</span>
					<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(resources/images/video2.png); ">
						<a href="https://www.youtube.com/watch?v=fm1XcWhWwlw" class="popup-vimeo"><i class="icon-video"></i></a>
						<div class="overlay"></div>
					</div>
				</div> -->
				<!-- <div class="col-md-4">
				<span>Mata-mata#3<br>"Tão camp que paga IPTU do lugar"<br>31/01/2017</span>
					<div class="gtco-video gtco-video-sm gtco-bg" style="background-image: url(resources/images/video3.png); ">
						<a href="https://www.youtube.com/watch?v=D4m0J2ngaFw" class="popup-vimeo"><i class="icon-video"></i></a>
						<div class="overlay"></div>
					</div>
				</div> -->
			</div>
		</div>
	</div>

	<div id="gtco-counter" class="gtco-bg gtco-cover gtco-counter" style="background-image:url(resources/images/soldado.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="display-t">
					<div class="display-tc">
						
						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-star"></i>
									<i class="icon-star"></i>
									<i class="icon-star"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="1" data-speed="50" data-refresh-interval="50">1</span>
								<span class="counter-label">Lideres</span>
							</div>
						</div>
						
						
						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-star"></i>
									<i class="icon-star"></i>
								</span>
								<span class="counter js-counter" data-from="0" data-to="6" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Comissários</span>
							</div>
						</div>
						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-star"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="7" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Tenentes</span>

							</div>
						</div>

						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-user"></i>
									<i class="icon-user"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="45" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Representantes</span>

							</div>
						</div>	

						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-user"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="9" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Capangas</span>

							</div>
						</div>
						
						<div class="col-md-2 col-sm-6 animate-box">
							<div class="feature-center">
								<span class="icon">
									<i class="icon-eye"></i>
								</span>

								<span class="counter js-counter" data-from="0" data-to="68" data-speed="5000" data-refresh-interval="50">1</span>
								<span class="counter-label">Total de Membros</span>

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
					<h2>HIERARQUIA</h2>
				</div>
			</div>
			<div class="row animate-box">
				
			
				<div class="owl-carousel owl-carousel-fullwidth ">
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/comissario.png" alt="user">
							</figure>
							<span>líder</span>
							<blockquote>
								<p>O fundador do Comando e manda-chuva geral. O seu poder é absoluto.</p>
							</blockquote>
						</div>
					</div>

					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/comissario.png" alt="user">
							</figure>
							<span>Comissários no comando</a></span>
							<blockquote>
								<p>Os membros mais confiáveis do Comando. Eles têm o poder de administrar todos os aspectos do Comando em nome do Líder,
								   incluindo a habilidade de promover membros internamente e convidar novos membros.</p>
							</blockquote>
						</div>
					</div>
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/comissario.png" alt="user">
							</figure>
							<span>tenentes</span>
							<blockquote>
								<p>Membros respeitados, com privilégios específicos para manter o Comando na linha.</p>
							</blockquote>
						</div>
					</div>
					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/comissario.png" alt="user">
							</figure>
							<span>representantes</span>
							<blockquote>
								<p>Membros que provaram a sua dedicação ao Comando e foram recompensados com permissões básicas
								   para ajudar no recrutamento.</p>
							</blockquote>
						</div>
					</div>

					<div class="item">
						<div class="testimony-slide active text-center">
							<figure>
								<img src="resources/images/comissario.png" alt="user">
							</figure>
							<span>capangas</span>
							<blockquote>
								<p>Quem põe a mão na massa pelo Comando. Eles podem não ter, ou não querer, nenhum poder administrativo,
								   mas eles costumam ser o principal elemento que torna o seu Comando temível.</p>
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
					<h2>O QUE FAZEMOS NO DIA-A-DIA</h2>
					<p>Embora o foco do nosso comando sejam as guerras na sessões, na ausência delas fazemos também vários outros serviços.</p>
				</div>
			</div>

			<div class="row animate-box">
				
				<div class="gtco-tabs">
					<ul class="gtco-tab-nav">
						<li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-command"></i></span><span class="hidden-xs">Guerras</span></a></li>
						<li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">Heists</span></a></li>
						<li><a href="#" data-tab="3"><span class="icon visible-xs"><i class="icon-bag"></i></span><span class="hidden-xs">Muambas</span></a></li>
						<li><a href="#" data-tab="4"><span class="icon visible-xs"><i class="icon-box"></i></span><span class="hidden-xs">Moto Clube / Exportação</span></a></li>
					</ul>

					<!-- Tabs -->
					<div class="gtco-tab-content-wrap">

						<div class="gtco-tab-content tab-content active" data-tab-content="1">
							<div class="col-md-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.png); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6">
								<h2>Guerras</h2>
								<p>É o foco do comando, ponto. É o objetivo, o alvo, a meta ou seja la qual o termo,
								   queremos guerra na sessão.</p>

								<p>Paramos Heists, muambas, serviços ou tunangem de carros, tudo para entrar na guerra ou ajudar algum membro
								que esteja precisando de ajuda contra outros players na sessão.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Não procuramos a guerra...</h2>
										<p>a guerra nos encontra. Um tiro no carro será o motivo, um tiro em um membro do comando será o motivo, 
										atirou em um, terá que atirar em todos.
										</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">Zuaram tua muamba ?</h2>
										<p>Pegue os nomes, anotem o comando, vamos atrás. Não guardamos rancor, guardamos nomes e comandos.</p>
									</div>
								</div>

							</div>
						</div>

						<div class="gtco-tab-content tab-content" data-tab-content="2">
							<div class="col-md-6 col-md-push-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.png); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6 col-md-pull-6">
								<h2>Heists</h2>
								<p>Estamos sempre fazendo as Heists no jogo. Sempre quando algum membro precisa de dinheiro, ou precisa completar todas as heists
								para desbloquear carros ou armas, estamos ajudando.
								 </p>

								<p>Uma coisa é certa, tudo nesse jogo é caro! Carros tunados são caros, apartamentos são caros, as armas e as balas custam caro,
								mas as heists estão ai pra isso, juntar grana.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Pacific</h2>
										<p>Para quem não está abastado de grana, essa é uma boa opção de serviço.</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">Grana para quem precisa</h2>
										<p>Sempre fazemos uma divisão justa para quem está precisando de dinheiro.</p>
									</div>
								</div>

							</div>
						</div>

						<div class="gtco-tab-content tab-content" data-tab-content="3">
							<div class="col-md-6 col-md-push-6">
								<div class="gtco-video gtco-bg" style="background-image: url(resources/images/img_1.png); ">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-video"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="col-md-6 col-md-pull-6">
								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<h2>Muamba</h2>
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>Uma forma de juntar dinheiro</h3>
										<p>Não é uma das mais rápidas, mas já é um começo.</p>
									</div>
								</div>

								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>aceite conselhos</h3>
										<p>Escute quem já faz muamba a muito tempo, as dicas podem te ajudar a ganhar mais em menos tempo.</p>
									</div>
								</div>

								<div class="feature-left animate-box" data-animate-effect="fadeInLeft">
									<span class="icon">
										<i class="icon-check"></i>
									</span>
									<div class="feature-copy">
										<h3>vender em equipe é melhor</h3>
										<p>Peça ajuda para vender ou coletar muamba.</p>
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
								<h2>Moto Clube e Exportação de Carros</h2>
								<p>O serviço de <b>MC</b> ( moto clube ) é outra forma de juntar dinheiro, porém odiado por alguns. Odiado pela simples motivo de ficarem te ligando
								   a todo momento falando que falta algum elemento para sua fábrica. O cara enche o saco mesmo ! Mas pode gerar uma grana extra enquanto você faz outro serviço.</p>

								<p>O serviço de <b>Exportação de carros</b> é o que está gerando um dinheiro mais rápido na sessão pública. Dependendo do carro e de sua habilidade de piloto, um carro pode te gerar $100 mil em alguns minutos.</p>

								<div class="row">
									<div class="col-md-6">
										<h2 class="uppercase">Precisa vender ou coletar ?</h2>
										<p>Sempre que precisar vender ou coletar algo, chame alguém disponível.</p>
									</div>
									<div class="col-md-6">
										<h2 class="uppercase">Junte e venda em equipe</h2>
										<p>Geralemente exportar mais de um carro pode gerar uma receita maior.</p>
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

