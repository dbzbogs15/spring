<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<header id="header">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="header_top">
				<div class="header_top_left">
					<ul class="top_nav">
						<li><a href="${pageContext.request.contextPath}">Trang
								chủ</a></li>
						<li><a href="#">Về chúng tôi</a></li>
						<li><a href="pages/contact.html">Liên hệ</a></li>
					</ul>
				</div>
				<div class="header_top_right">
					<c:set var="now" value="<%=new Date()%>" />
					<p>
						<fmt:formatDate type="both" value="${now}" />
					</p>
				</div>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="header_bottom">
				<div class="add_banner">
					<img
						src="${pageContext.request.contextPath}/resources/images/logo_new.jpg"
						alt="">
				</div>
			</div>
		</div>
	</div>
</header>
<section id="navArea">
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav main_nav">
				<li class="active"><a href="index.html"><span
						class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
				<li><a href="#">Anime</a></li>
				<li><a href="#">Manga</a></li>
				<li><a href="#">Light novel</a></li>
				<li><a href="pages/contact.html">Game</a></li>
				<li><a href="pages/404.html">Tin tức</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Khác</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Android</a></li>
						<li><a href="#">Samsung</a></li>
						<li><a href="#">Nokia</a></li>
						<li><a href="#">Walton Mobile</a></li>
						<li><a href="#">Sympony</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
</section>
<section id="newsSection">
	<div class="row">
		<div class="col-lg-12 col-md-12">
			<div class="latest_newsarea">
				<span>Latest News</span>
				<ul id="ticker01" class="news_sticker">
					<c:forEach var="slide" items="${slides}">
						<li><a href="#"> <img
								src="${pageContext.request.contextPath}/resources/${slide.image}"
								alt="">${slide.name}</a></li>
					</c:forEach>
				</ul>
				<div class="social_area">
					<ul class="social_nav">
						<li class="facebook"><a href="#"></a></li>
						<li class="twitter"><a href="#"></a></li>
						<li class="flickr"><a href="#"></a></li>
						<li class="pinterest"><a href="#"></a></li>
						<li class="googleplus"><a href="#"></a></li>
						<li class="vimeo"><a href="#"></a></li>
						<li class="youtube"><a href="#"></a></li>
						<li class="mail"><a href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>