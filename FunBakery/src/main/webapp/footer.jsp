<%@page import="com.VO.BakeryVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BakeryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="module-small bg-dark">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">About Titan</h5>
					<p>The languages only differ in their grammar, their
						pronunciation and their most common words.</p>
					<p>Phone: +1 234 567 89 10</p>
					Fax: +1 234 567 89 10
					<p>
						Email:<a href="#">somecompany@example.com</a>
					</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">Recent Comments</h5>
					<ul class="icon-list">
						<li>Maria on <a href="#">Designer Desk Essentials</a></li>
						<li>John on <a href="#">Realistic Business Card Mockup</a></li>
						<li>Andy on <a href="#">Eco bag Mockup</a></li>
						<li>Jack on <a href="#">Bottle Mockup</a></li>
						<li>Mark on <a href="#">Our trip to the Alps</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">레시피 분류</h5>
					<ul class="icon-list">
						<li><a href="#">케이크</a></li>
						<li><a href="#">구움과자</a></li>
						<li><a href="#">(건강)빵</a></li>
						<li><a href="#">쿠키</a></li>
						<li><a href="#">노오븐</a></li>
						<li><a href="#">냉동생지</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">Popular Posts</h5>
					<ul class="widget-posts">
						<%
							BakeryDAO dao = new BakeryDAO();
							ArrayList<BakeryVO> list = dao.popular();
							
							for(BakeryVO vo : list){
						%>
						<li class="clearfix">
							<div class="widget-posts-image">
								<a href="#"><img src="<%=vo.getB_img() %>" alt="Post Thumbnail" /></a>
							</div>
							<div class="widget-posts-body">
								<div class="widget-posts-title">
									<a href="#"><%=vo.getB_name() %></a>
								</div>
								<div class="widget-posts-meta"><%=vo.getB_category() %></div>
							</div>
						</li>
						<%	} %>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<hr class="divider-d">
<footer class="footer bg-dark">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<p class="copyright font-alt">
					&copy; 2022&nbsp;<a href="index.html">Fun Bakery</a>, All Rights Reserved
				</p>
			</div>
			<div class="col-sm-6">
				<div class="footer-social-links">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</div>
</footer>
<div class="scroll-up">
	<a href="#totop"><i class="fa fa-angle-double-up"></i></a>
</div>