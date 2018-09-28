<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-lg-8 col-md-8 col-sm-8">
	<div class="slick_slider">
		<c:forEach var="slide" items="${slides}">
			<div class="single_iteam">
				<a href="pages/single_page.html"> <img
					src="${pageContext.request.contextPath}/resources/${slide.image}"
					alt=""></a>
				<div class="slider_article">
					<h2>
						<a class="slider_tittle"
							href="${pageContext.request.contextPath}/${slide.category.linkUrl}/${slide.postId}">
							${slide.name} </a>
					</h2>
					<p>${slide.summary}</p>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
