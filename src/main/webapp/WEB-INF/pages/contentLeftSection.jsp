<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-lg-8 col-md-8 col-sm-8">
	<div class="left_content">
		<div class="single_post_content">
			<h2>
				<span>Anime</span>
			</h2>
			<div class="single_post_content_left">
				<ul class="business_catgnav  wow fadeInDown">
					<c:forEach begin="0" end="0" items="${cateAnime}" var="post1Anime">
						<li>
							<figure class="bsbig_fig">
								<a href="pages/single_page.html" class="featured_img"> <img
									alt="" style="height: 200px"
									src="${pageContext.request.contextPath}/resources/${post1Anime.image}">
									<span class="overlay"></span>
								</a>
								<figcaption>
									<a href="pages/single_page.html">${post1Anime.name}</a>
								</figcaption>
								<p>${post1Anime.summary}</p>
							</figure>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="single_post_content_right">
				<ul class="spost_nav">
					<c:forEach var="post4anime" items="${cateAnime}" begin="1">
						<li>
							<div class="media wow fadeInDown">
								<a href="pages/single_page.html" class="media-left"> <img
									alt=""
									src="${pageContext.request.contextPath}/resources/${post4anime.image}">
								</a>
								<div class="media-body">
									<a href="pages/single_page.html" class="catg_title">
										${post4anime.name} </a>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="fashion_technology_area">
			<div class="fashion">
				<div class="single_post_content">
					<h2>
						<span>Manga</span>
					</h2>
					<ul class="business_catgnav wow fadeInDown">
						<c:forEach begin="0" end="0" var="post1Manga" items="${cateManga}">
							<li>
								<figure class="bsbig_fig">
									<a href="pages/single_page.html" class="featured_img"> <img
										alt="" style="height: 200px"
										src="${pageContext.request.contextPath}/resources/${post1Manga.image}">
										<span class="overlay"></span>
									</a>
									<figcaption>
										<a href="pages/single_page.html"> ${post1Manga.name} </a>
									</figcaption>
									<p>${post1Manga.summary}</p>
								</figure>
								<hr />
							</li>
						</c:forEach>
					</ul>
					<ul class="spost_nav" style="border-top: 1px solid #000">
						<c:forEach items="${cateManga}" var="post4Manga" begin="1">
							<li>
								<div class="media wow fadeInDown">
									<a href="pages/single_page.html" class="media-left"> <img
										alt=""
										src="${pageContext.request.contextPath}/resources/${post4Manga.image}">
									</a>
									<div class="media-body">
										<a href="pages/single_page.html" class="catg_title">
											${post4Manga.name}</a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="technology">
				<div class="single_post_content">
					<h2>
						<span>Light Novel</span>
					</h2>
					<ul class="business_catgnav">
						<c:forEach var="post1LightNovel" items="${cateLightNovel}"
							begin="0" end="0">
							<li>
								<figure class="bsbig_fig wow fadeInDown">
									<a href="pages/single_page.html" class="featured_img"> <img
										alt=""
										src="${pageContext.request.contextPath}/resources/${post1LightNovel.image}">
										<span class="overlay"></span>
									</a>
									<figcaption>
										<a href="pages/single_page.html"> ${post1LightNovel.name}
										</a>
									</figcaption>
									<p>${post1LightNovel.summary}</p>
								</figure>
								<hr />
							</li>
						</c:forEach>
					</ul>
					<ul class="spost_nav">
						<c:forEach begin="1" var="post4LightNovel"
							items="${cateLightNovel}">
							<li>
								<div class="media wow fadeInDown">
									<a href="pages/single_page.html" class="media-left"> <img
										alt=""
										src="${pageContext.request.contextPath}/resources/${post4LightNovel.image}">
									</a>
									<div class="media-body">
										<a href="pages/single_page.html" class="catg_title">
											${post4LightNovel.name}</a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="single_post_content">
			<h2>
				<span>Photography</span>
			</h2>
			<ul class="photograph_nav  wow fadeInDown">
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos1.jpg"
								title="Photography Ttile 1"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos1.jpg"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos2.png"
								title="Photography Ttile 2"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos2.png"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos3.jpg"
								title="Photography Ttile 3"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos3.jpg"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos4.jpg"
								title="Photography Ttile 4"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos4.jpg"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos5.jpg"
								title="Photography Ttile 5"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos5.jpg"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
				<li>
					<div class="photo_grid">
						<figure class="effect-layla">
							<a class="fancybox-buttons" data-fancybox-group="button"
								href="${pageContext.request.contextPath}/resources/cos/cos6.jpg"
								title="Photography Ttile 6"> <img
								src="${pageContext.request.contextPath}/resources/cos/cos6.jpg"
								alt="" />
							</a>
						</figure>
					</div>
				</li>
			</ul>
		</div>
		<div class="single_post_content">
			<h2>
				<span>Games</span>
			</h2>
			<div class="single_post_content_left">
				<ul class="business_catgnav">
					<c:forEach var="post1Game" items="${cateGame}" begin="0" end="0">
						<li>
							<figure class="bsbig_fig  wow fadeInDown">
								<a class="featured_img" href="pages/single_page.html"> <img
									src="${pageContext.request.contextPath}/resources/${post1Game.image}"
									alt=""> <span class="overlay"></span>
								</a>
								<figcaption>
									<a href="pages/single_page.html"> ${post1Game.name} </a>
								</figcaption>
								<p>${post1Game.summary }</p>
							</figure>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="single_post_content_right">
				<ul class="spost_nav">
					<c:forEach var="post4Game" begin="1" items="${cateGame}">
						<li>
							<div class="media wow fadeInDown">
								<a href="pages/single_page.html" class="media-left"> <img
									alt=""
									src="${pageContext.request.contextPath}/resources/${post4Game.image}">
								</a>
								<div class="media-body">
									<a href="pages/single_page.html" class="catg_title">
										${post4Game.name} </a>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
