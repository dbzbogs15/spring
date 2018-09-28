<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="header.jsp"%>
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<section id="contentSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="left_content">
						<div class="single_page">
							<ol class="breadcrumb">
								<li><a href="../index.html">Home</a></li>
								<li><a href="#">Tin tức</a></li>
								<li class="active">${post.category.name}</li>
							</ol>
							<h1>${post.name}</h1>
							<div class="post_commentbox">
								<a href="#"><i class="fa fa-user"></i>${post.author}</a> <span><i
									class="fa fa-calendar"></i>6:49 AM</span> <a href="#"><i
									class="fa fa-tags"></i>${post.category.name}</a>
							</div>
							<div class="single_page_content">
								<img class="img-center" src="${pageContext.request.contextPath}/resources/${post.image}"
									alt="">
								<p>${post.content}</p>
								<blockquote>Donec volutpat nibh sit amet libero
									ornare non laoreet arcu luctus. Donec id arcu quis mauris
									euismod placerat sit amet ut metus. Sed imperdiet fringilla sem
									eget euismod. Pellentesque habitant morbi tristique senectus et
									netus et malesuada fames ac turpis egestas. Pellentesque
									adipiscing, neque ut pulvinar tincidunt, est sem euismod odio,
									eu ullamcorper turpis nisl sit amet velit. Nullam vitae nibh
									odio, non scelerisque nibh. Vestibulum ut est augue, in varius
									purus.</blockquote>
								<ul>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
									<li>Nullam vitae nibh odio, non scelerisque nibh</li>
								</ul>
								<h2>This is h2 title</h2>
								<h3>This is h3 title</h3>
								<h4>This is h4 title</h4>
								<h5>This is h5 title</h5>
								<h6>This is h6 Title</h6>
								<button class="btn default-btn">Default</button>
								<button class="btn btn-red">Red Button</button>
								<button class="btn btn-yellow">Yellow Button</button>
								<button class="btn btn-green">Green Button</button>
								<button class="btn btn-black">Black Button</button>
								<button class="btn btn-orange">Orange Button</button>
								<button class="btn btn-blue">Blue Button</button>
								<button class="btn btn-lime">Lime Button</button>
								<button class="btn btn-theme">Theme Button</button>
							</div>
							<div class="social_link">
								<ul class="sociallink_nav">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								</ul>
							</div>
							<div class="related_post">
								<h2>
									Related Post <i class="fa fa-thumbs-o-up"></i>
								</h2>
								<ul class="spost_nav wow fadeInDown animated">
									<li>
										<div class="media">
											<a class="media-left" href="single_page.html"> <img
												src="../images/post_img1.jpg" alt="">
											</a>
											<div class="media-body">
												<a class="catg_title" href="single_page.html"> Aliquam
													malesuada diam eget turpis varius</a>
											</div>
										</div>
									</li>
									<li>
										<div class="media">
											<a class="media-left" href="single_page.html"> <img
												src="../images/post_img2.jpg" alt="">
											</a>
											<div class="media-body">
												<a class="catg_title" href="single_page.html"> Aliquam
													malesuada diam eget turpis varius</a>
											</div>
										</div>
									</li>
									<li>
										<div class="media">
											<a class="media-left" href="single_page.html"> <img
												src="../images/post_img1.jpg" alt="">
											</a>
											<div class="media-body">
												<a class="catg_title" href="single_page.html"> Aliquam
													malesuada diam eget turpis varius</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<%@include file="lastestPost.jsp" %>
				<%@include file="contentRightSection.jsp" %>
			</div>
		</section>
		<%@include file="contentFooter.jsp"%>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>