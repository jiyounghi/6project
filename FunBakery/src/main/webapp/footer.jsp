<%@page import="com.VO.BoardVO"%>
<%@page import="com.DAO.BoardDAO"%>
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
					<h5 class="widget-title font-alt">About Fun Bakery</h5>
					<p>팀장 : 문지영</p>
					<p>팀원 : 노성진</p>
					<p>팀원 : 박현성</p>
					<p>팀원 : 윤예지</p>
					<p>팀원 : 박현성</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">Recent Article</h5>
					<ul class="icon-list">
						<%
							BoardDAO bdao = new BoardDAO();
							ArrayList<BoardVO> flist = bdao.footer();
							
							for(BoardVO vo : flist){
						%>
						<li><%=vo.getMb_name() %> on <a href="BoardDetailCon?seq=<%=vo.getArticle_seq() %>"><%=vo.getArticle_title() %></a></li>
						<%	} %>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">레시피 분류</h5>
					<ul class="icon-list">
						<li><a href="CategoryCon?cat=케이크">케이크</a></li>
						<li><a href="CategoryCon?cat=구움과자">구움과자</a></li>
						<li><a href="CategoryCon?cat=">(건강)빵</a></li>
						<li><a href="CategoryCon?cat=빵">쿠키</a></li>
						<li><a href="CategoryCon?cat=노오븐">노오븐</a></li>
						<li><a href="CategoryCon?cat=냉동생지">냉동생지</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widget-title font-alt">Popular Posts</h5>
					<ul class="widget-posts">
						<li class="clearfix">
							<div class="widget-posts-image">
								<a href="#"><img src="assets/images/rp-1.jpg" alt="Post Thumbnail" /></a>
							</div>
							<div class="widget-posts-body">
								<div class="widget-posts-title">
									<a href="#">Designer Desk Essentials</a>
								</div>
								<div class="widget-posts-meta">23 january</div>
							</div>
						</li>
						<li class="clearfix">
							<div class="widget-posts-image">
								<a href="#"><img src="assets/images/rp-2.jpg" alt="Post Thumbnail" /></a>
							</div>
							<div class="widget-posts-body">
								<div class="widget-posts-title">
									<a href="#">Realistic Business Card Mockup</a>
								</div>
								<div class="widget-posts-meta">15 February</div>
							</div>
						</li>
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