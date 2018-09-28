<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-lg-4 col-md-4 col-sm-4">
	<div class="latest_post">
		<h2>
			<span>Latest post</span>
		</h2>
		<div class="latest_post_container">
			<div id="prev-button">
				<i class="fa fa-chevron-up"></i>
			</div>
			<ul class="latest_postnav">
				<c:forEach var="lastest2" items="${lastest2}">
					<li>
						<div class="media">
							<a href="pages/single_page.html" class="media-left"> <img
								alt=""
								src="${pageContext.request.contextPath}/resources/${lastest2.image}">
							</a>
							<div class="media-body">
								<a href="pages/single_page.html" class="catg_title">
									${lastest2.name}</a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			<div id="next-button">
				<i class="fa  fa-chevron-down"></i>
			</div>
		</div>
	</div>
</div>