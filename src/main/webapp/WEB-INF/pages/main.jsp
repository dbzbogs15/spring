<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp"%>
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<section id="sliderSection">
			<div class="row">
				<%@include file="sliderSection.jsp"%>
				<%@include file="lastestPost.jsp" %>
			</div>
		</section>
		<section id="contentSection">
			<div class="row">
				<%@include file="contentLeftSection.jsp"%>
				<%@include file="contentRightSection.jsp"%>
			</div>
		</section>
		<%@include file="contentFooter.jsp"%>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>