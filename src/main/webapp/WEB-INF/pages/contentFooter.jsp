<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<footer id="footer">
	<div class="footer_top">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="footer_widget wow fadeInLeftBig">
					<h2>Flickr Images</h2>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="footer_widget wow fadeInDown">
					<h2>Tag</h2>
					<ul class="tag_nav">
						<c:forEach items="${tagCates}" var="tagCates">
							<li><a href="#">${tagCates.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="footer_widget wow fadeInRightBig">
					<h2>Contact</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
						Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					<address>Perfect News,1238 S . 123 St.Suite 25 Town City
						3333,USA Phone: 123-326-789 Fax: 123-546-567</address>
				</div>
			</div>
		</div>
	</div>
	<div class="footer_bottom">
		<p class="copyright">
			Copyright &copy; 2045 <a href="index.html">NewsFeed</a>
		</p>
		<p class="developer">Developed By Wpfreeware</p>
	</div>
</footer>