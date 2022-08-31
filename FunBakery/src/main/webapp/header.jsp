<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String username = (String)session.getAttribute("username"); %>
<div class="page-loader">
  <div class="loader">Loading...</div>
</div>
<nav class="navbar navbar-custom navbar-fixed-top navbar-transparent" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#custom-collapse">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Fun <img src="assets/images/cooking.png" style="display:inline;"/> Bakery</a>
		</div>
		<div class="collapse navbar-collapse" id="custom-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">레시피</a>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=케이크" data-toggle="dropdown">케이크</a>
							<ul class="dropdown-menu">
								<li><a href="#">생크림케이크</a></li>
								<li><a href="#">치즈케이크</a></li>
								<li><a href="#">초코케이크</a></li>
								<li><a href="#">당근케이크</a></li>
								<li><a href="#">카스테라</a></li>
								<li><a href="#">티라미수</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=구운과자" data-toggle="dropdown">구운과자</a>
							<ul class="dropdown-menu">
								<li><a href="#">레몬 마들렌</a></li>
								<li><a href="#">플레인 스콘</a></li>
								<li><a href="#">크림치즈 스콘</a></li>
								<li><a href="#">오레오브라우니</a></li>
								<li><a href="#">황치즈머핀</a></li>
								<li><a href="#">대파치즈스콘</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=빵" data-toggle="dropdown">(건강)빵</a>
							<ul class="dropdown-menu">
								<li><a href="#">소금빵</a></li>
								<li><a href="#">모닝빵</a></li>
								<li><a href="#">모카빵</a></li>
								<li><a href="#">포카치아</a></li>
								<li><a href="#">호밀빵</a></li>
								<li><a href="#">꽈배기 도너츠</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=쿠키" data-toggle="dropdown">쿠키</a>
							<ul class="dropdown-menu">
								<li><a href="#">버터 쿠키</a></li>
								<li><a href="#">초코칩 쿠키</a></li>
								<li><a href="#">코코아 쿠키</a></li>
								<li><a href="#">치즈 쿠키</a></li>
								<li><a href="#">얼그레이 쿠키</a></li>
								<li><a href="#">녹차 쿠키</a></li>
							</ul></li>
						<li class="dropdown"><a href="CategoryCon?cat=노오븐">노오븐</a>
						<li class="dropdown"><a href="CategoryCon?cat=냉동생지">냉동생지</a>
					</ul>
				</li>
				<li><a href="tip.jsp">유의사항</a></li>
				<li><a href="BoardListCon">게시판</a></li>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"  href="#" target="_blank" >재료 및 도구</a>
					<ul class="dropdown-menu">
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">판매처</a>
						<ul class="dropdown-menu">
							<li><a href="http://www.bncmarket.com/">b&c market</a></li>
							<li><a href="http://www.bakingfarm.co.kr/">baking farm</a></li>
						</ul></li>
					<li><a href="info.jsp">정보</a></li>
				</ul></li>
					<% if(username!=null){ %>
						<li><a href="LogoutCon">로그아웃</a></li>
						<% if(username.equals("admin")){ %>
							<li><a href="ManageCon">회원관리</a></li>
						<%} %>
					<%}else{ %>
						<li><a href="login_register.jsp">로그인</a></li>
					<%} %>
			</ul>
		</div>
	</div>
</nav>