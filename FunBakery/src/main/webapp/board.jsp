<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BoardDAO"%>
<%@page import="com.VO.BoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  
    Document Title
    =============================================
    -->
    <title>Fun Bakery</title>
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="assets/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="assets/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="assets/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="assets/lib/animate.css/animate.css" rel="stylesheet">
    <link href="assets/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="assets/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="assets/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="assets/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="assets/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="assets/css/colors/default.css" rel="stylesheet">
  </head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <% String email = (String)session.getAttribute("email"); %>
    <main>
      <!-- 헤더부분 -->
	  <%@ include file="header.jsp" %>
      <div class="main">
   			<section class="module bg-dark-60 blog-page-header"
				data-background="assets/images/background/community.png">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<h1 class="module-title font-alt">Community</h1>
						</div>
					</div>
				</div>
			</section>
        <section class="module">
          <div class="container">
            <hr class="divider-w pt-20">
            <div class="row">
              <div class="col-sm-12">
              	<form method="post">
                <table class="table table-striped community-font">
                    <tr>
                      <th></th>
                      <th style="text-align: center">제목</th>
                      <th style="text-align: center">작성자</th>
                      <th style="text-align: center">작성일</th>
                      <th style="text-align: center">조회수</th>
                    </tr>
                    <c:forEach items="${blist }" var="blist">
	                    <tr>
	                      <td style="width: 5%; text-align: center;">${blist.article_seq }</td>
	                      <td style="width: 55%"><a href="BoardDetailCon?seq=${blist.article_seq }">${blist.article_title }</a></td>
	                      <td style="width: 20%">${blist.mb_name }</td>
	                      <td style="width: 15%; text-align: center;">${blist.article_date }</td>
	                      <td style="width: 5%; text-align: center;">${blist.count }</td>
	                    </tr>
                    </c:forEach>
                </table>
                </form>
                <%if(email != null){ %>
	              <a class="btn btn-round btn-g" href="board_write.jsp">글쓰기</a>
	              <%}else{ %>
	              <a class="btn btn-round btn-g" href="board_write.jsp" style="display:none">글쓰기</a>
	              <%} %>
              </div>
<!-- 페이지이동 -->
              <div class="col-sm-12" style="text-align: center;">
                <div class="pagination font-alt">
                  <c:if test="${vo.prev }">
                  <li><a href="BoardListCon?pageNum=${vo.startPage - 1 }&amount=${vo.amount}"><i class="fa fa-angle-left"></i></a></li>
				  </c:if>
								                        		
                        		
              	  <c:forEach var="num" begin="${vo.startPage }" end="${vo.endPage }">
               	  <li><a href="BoardListCon?pageNum=${num }&amount=${vo.amount}">${num }</a></li>
              	  </c:forEach>
                        		
                        		
                  <c:if test="${vo.next }">
                  <li><a href="BoardListCon?pageNum=${vo.endPage + 1 }&amount=${vo.amount}"><i class="fa fa-angle-right"></i></a></li>
                  </c:if>
                </div>
              </div>
<!-- 페이지이동 -->
            </div>
          </div>
        </section>
      </div>
		<%@ include file="footer.jsp" %>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="assets/lib/jquery/dist/jquery.js"></script>
    <script src="assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/lib/wow/dist/wow.js"></script>
    <script src="assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="assets/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="assets/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="assets/lib/flexslider/jquery.flexslider.js"></script>
    <script src="assets/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="assets/lib/smoothscroll.js"></script>
    <script src="assets/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
