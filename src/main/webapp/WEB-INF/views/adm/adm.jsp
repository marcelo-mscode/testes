<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Supremacia | BR</title>

	<link href='https://fonts.googleapis.com/css?family=Raleway:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<%-- <link rel="stylesheet" href='<c:url value="resources/css/animate.css"/>' > --%>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href='<c:url value="resources/css/icomoon.css"/>'>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href='<c:url value="resources/css/bootstrap.css"/>'>

	<!-- Magnific Popup -->
	<link rel="stylesheet" href='<c:url value="resources/css/magnific-popup.css"/>'>

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href='<c:url value="resources/css/owl.carousel.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="resources/css/owl.theme.default.min.css"/>'>

	<!-- Theme style  -->
	<link rel="stylesheet" href='<c:url value="resources/css/style.css"/>'>

	<!-- Modernizr JS -->
	<script href='<c:url value="resources/js/modernizr-2.6.2.min.js"/>'></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	<style type="text/css">
		.adminTopo{padding-top: 50px}
		.formVideo{height: 430px;padding: 20px 0 20px 0;}
		.formRegras{height: 430px;padding: 20px 0 20px 0;}
	
	</style>
	

</head>


<body>
		
	<div class="gtco-loader"></div>
	

<header class="col-md-12 adminTopo">

<div class="col-md-12">
		<h4>ADMINISTRADOR</h4>
</div>
	
	
	
	<div class="gtco-tabs">
		<ul class="gtco-tab-nav">
			<li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-command"></i></span><span class="hidden-xs">Vídeos</span></a></li>
			<li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">Regras</span></a></li>
			<li><a href="#" data-tab="3"><span class="icon visible-xs"><i class="icon-bag"></i></span><span class="hidden-xs">Muambas</span></a></li>
			<li><a href="#" data-tab="4"><span class="icon visible-xs"><i class="icon-box"></i></span><span class="hidden-xs">Moto Clube / Exportação</span></a></li>
		</ul>
		
			
		<div class="gtco-tab-content-wrap">
			<div class="gtco-tab-content tab-content" data-tab-content="1">
			<div class="col-md-4">
				<h4>Inserir novo vídeo</h4>
				<form class="form-control formVideo" action="cadastraVideo" method="post">
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="imagem" class="sr-only">Caminho da Imagem</label>
							<input name="nomeImage"  type="text" class="form-control" id="imagem" placeholder="Caminho Imagem">
						</div>
					</div>
			 		<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="name" class="sr-only">Data Postagem</label>
							<input name="postadoEmTrans" type="date" class="form-control" id="postagem" placeholder="Data Postagem">
						</div>
					</div>
				<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="name" class="sr-only">Título</label>
							<input name="titulo" type="text" class="form-control" id="titulo" placeholder="Título">
						</div>
					</div>
		
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="name" class="sr-only">Sub-Título</label>
							<input name="subTitulo" type="text" class="form-control" id="subTitulo" placeholder="Sub-Título">
						</div>
					</div>
		
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="name" class="sr-only">Url Vídeo</label>
							<input name="url" type="text" class="form-control" id="url" placeholder="Url do Vídeo">
						</div>
					</div>
		
					<div class="col-md-12 col-sm-6">
						<button type="submit" class="btn btn-success btn-block">Enviar</button>
					</div>
				</form>
			
			</div>
			
			<div class="col-md-12" style="margin-top: 50px">
				<h4>Editar vídeo</h4>
				<table class="table table-striped">
					<tr>
						<th>Título Vídeo</th>
						<th>Sub-Título</th>
						<th>Caminho Imagem</th>
						<th>Url Vídeo</th>
						<th>Data Postagem</th>
						<th>Salvar</th>
						<th>Remover</th>
					</tr>
					<c:forEach items="${ultimoVideo}" var="editaVideo" >
					<form class="form-control formVideo" action="editaVideo" method="post">
					<input type="hidden" name="idVideos" value="${editaVideo.idVideos}"  />
						<tr>
							<td><input name="nomeImage"  type="text" class="form-control" id="imagem" value="${editaVideo.nomeImage}"></td>
							<td><input name="titulo" type="text" class="form-control" id="titulo" value="${editaVideo.titulo}"></td>
							<td><input name="subTitulo" type="text" class="form-control" id="subTitulo" value="${editaVideo.subTitulo}"></td>
							<td><input name="url" type="text" class="form-control" id="url" value="${editaVideo.url}"></td>
							<td><input name="postadoEmTrans" type="text" class="form-control" id="postagem" value='<fmt:formatDate value="${editaVideo.postadoEm}" pattern="dd/MM/YYYY"/>' /></td>
							<td><button type="submit" class="btn btn-success btn-block">Enviar</button></td>
							<td><a href="removeVideo?idVideo=${editaVideo.idVideos}" class="btn btn-Danger btn-block">X</a></td>
						</tr>
					</form>
					</c:forEach>
				</table>
			</div>
		  </div>
		  
<!-- /*  Regras   */ -->		  
		  <div class="gtco-tab-content tab-content active" data-tab-content="2">
		  <div class="col-md-4">
				<h4>Inserir Regras</h4>
				<form class="form-control formRegras" action="cadastraRegras" method="post">
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="titulo" class="sr-only">Título</label>
							<input name="tituloRegimento"  type="text" class="form-control" id="titulo" placeholder="Título">
						</div>
					</div>

					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label for="descricao" class="sr-only">Descrição</label>
							<textarea name="subTituloDescricao"  class="form-control" id="descricao" placeholder="Descrição da Regra" rows="8"></textarea>
						</div>
					</div>

					<div class="col-md-12 col-sm-6">
						<button type="submit" class="btn btn-success btn-block">Cadastrar</button>
					</div>
				</form>
			
			</div>
			
			<div class="col-md-12" style="margin-top: 50px">
				<h4>Editar Regras</h4>
				<table class="table table-striped">
					<tr>
						<th>Título</th>
						<th>Descrição</th>
						<th style="text-align: center;">Editar</th>
						<th style="text-align: center;">Remover</th>
					</tr>
					<c:forEach items="${regras}" var="regras" >
					<form class="form-control formVideo" action="editaRegras" method="post">
					<input type="hidden" name="idRegimento" value="${regras.idRegimento}"  />
						<tr>
							<td><input name="tituloRegimento" type="text" class="form-control" id="titulo" value="${regras.tituloRegimento}"></td>
							<td>
								<textarea name="subTituloDescricao" class="form-control" id="descricao" rows="5">${regras.subTituloDescricao}</textarea>
							</td>
							<td><button type="submit" class="btn btn-success btn-block">Editar  Regra</button></td>
							<td><a href="removeRegra?idRegra=${regras.idRegimento}" class="btn btn-Danger btn-block">X</a></td>
						</tr>
					</form>
					</c:forEach>
				</table>
			</div>
		  </div>
		  </div>
		  
		  <div class="gtco-tab-content tab-content" data-tab-content="3">
		  
		  	345
		  
		  </div>
		  
		  
		  
		  
		</div>
	
	
	
	
	
	
	



</header>



<!-- <div id="gtco-subscribe">
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
	</div> -->


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