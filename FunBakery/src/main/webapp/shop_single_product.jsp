<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.BakeryVO" %>
<%@page import="com.DAO.BakeryDAO" %>
<%@page import="com.Bakery.BakeryCon" %>

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
    <title>Titan | Multipurpose HTML5 Template</title>
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
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<%@ include file="header.jsp" %>
      </nav>
      <div class="main">
        <section class="module">
        <% 
        BakeryVO breadInfo = (BakeryVO)request.getAttribute("breadInfo"); 
        %>
          <div class="container">
            <div class="row">
              <div class="col-sm-6 mb-sm-40"><a class="gallery" href=<%=breadInfo.getB_img()%>>
              	 <%out.print("<img src=" + breadInfo.getB_img() +" alt='Bread image'>");%>
              </div>
              <div class="col-sm-6">
                <div class="row" style="margin-bottom: 40px">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt"><%=breadInfo.getB_name() %></h1>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <%=breadInfo.getB_desc() %>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-4 mb-sm-20">
                    <input class="form-control input-lg" type="number" name="" value="1" max="40" min="1" required="required"/>
                  </div>
                  <div class="col-sm-8"><a class="btn btn-lg btn-block btn-round btn-b" href="#">Add To Cart</a></div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="product_meta">Categories:<a href="#"> Man, </a><a href="#">Clothing, </a><a href="#">T-shirts</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-70">
              <div class="col-sm-12">
                <ul class="nav nav-tabs font-alt" role="tablist">
                  <li class="active"><a id="taste1" href="#description" data-toggle="tab"><span class="icon-tools-2"></span>레시피1</a></li>
                  <li><a id="taste2" href="#data-sheet" data-toggle="tab"><span class="icon-tools-2"></span>레시피2</a></li>
                  <li><a id="taste3" href="#reviews" data-toggle="tab"><span class="icon-tools-2"></span>레시피3</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="description">
                     <!--  버튼1의 내용!  -->
                     
                     <!--  재료 비율 계산기 + 재료테이블   -->
                     <form class="form_ingr">
				        <input class="input_ingr_name" type="text" name="name" placeholder="재료명을 입력해주세요." />
				        <input class="input_ingr_weight" type="number" name="weight" placeholder="재료량을 입력해주세요." />
				        <button type="submit">전송</button>
				    </form>
                     
                     <hr width='90%'>
                     <!--  재료 테이블 시작 -->
                     <table id="ingr_table" border="1"></table>

					 <%
						// 해당 레시피의 재료명과 재료량을 배열에 담아서 js로 넘기기
                     	ArrayList<ArrayList<BakeryVO>> taste1 = (ArrayList<ArrayList<BakeryVO>>)request.getAttribute("taste1");
                     	int arr_len = taste1.get(1).size();
                     	String ingrName_java[] = new String[arr_len];  //재료명을 담을 배열
                     	String ingrWeight_java[] = new String[arr_len]; //재료량을 담을 배열 
                     	
                     	//재료명과 재료량을 배열로 저장하는 반복문
                     	for(int i=0; i<taste1.get(1).size(); i++) {
                     		ingrName_java[i] = taste1.get(1).get(i).getIngr_name();
                     		ingrWeight_java[i] = taste1.get(1).get(i).getIngr_weight();
                     	}
                	
                     %>	
                     
                     <script src="assets/js/RecipeTable.js"></script>
                     <script>
                     	// jsp 코드의 재료명 배열을 자바스크립트 배열로 옮기기 
                     	let ingrName = new Array();
                     	<% for(int i=0; i<arr_len; i++) {%>
                     		ingrName.push('<%=ingrName_java[i]%>');
                     	<%}%>
                     		

                     	let ingrWeight = new Array();
                     	<% for(int i=0; i<arr_len; i++) {%>
                     		ingrWeight.push('<%=ingrWeight_java[i] %>');    
                     	<%}%>
                     	
                     	// 클래스에 넣어주기 위해 딕셔너리 생성 (key-ingrName, value-ingrWeight)
                     	let ingrTable = {};
                     	for(var j=0; j<(ingrName.length)-1; j++) {
                     		let key = ingrName[j];
                     		ingrTable[key] = ingrWeight[j];
                     	}
                     	
                     	console.log(ingrName, ingrWeight);
                     	console.log(ingrTable);
                     	
                     	// 객체 생성
                     	const recipeTable = new RecipeTable(ingrTable);
                     	console.log(recipeTable);
                     	
                     	const form = document.querySelector(".form_ingr");
                        const nameInput = document.querySelector(".input_ingr_name");
                        const weightInput = document.querySelector(".input_ingr_weight");
                        let table = document.getElementById('ingr_table');

                        const getInputValue = (/** @type { Event } */ event) => {
                            event.preventDefault();
                            event.stopPropagation();
                            let nameValue = nameInput.value;
                            let weightValue = weightInput.value;
                            recipeTable.update(nameValue, weightValue)
                            table.innerHTML = recipeTable.toHtml();
                        };

                        const init = () => {
                            form.addEventListener("submit", getInputValue);
                            table.innerHTML = recipeTable.toHtml();
                        };

                        init();
                     	
                        
                     </script>
                     
                     <hr width='90%'>
                     
                     <!--  레시피 출력 -->
                     
                     <%
                     	out.print("<div>");
                     	for(int i=0; i < taste1.get(0).size(); i++){
                     		out.print("<div>");
                     		out.print("<div id=stepdescr>" + taste1.get(0).get(i).getR_order() + "</div>");
                     		out.print("<div id=stepdescr>" + taste1.get(0).get(i).getR_content() + "</div>");
                     		out.print("<div id=stepimg><img src=" + taste1.get(0).get(i).getR_img() + "></div>");
                     		out.print("</div>");
                     	}
                     	out.print("</div>");
                     
                     
                     
                     %>
                 
                     

                  </div>
                  <!--  버튼 2 시작 -->
                  <div class="tab-pane" id="data-sheet">
                  
                   <!--  재료 비율 계산기 + 재료테이블   -->
                     <form class="form_ingr">
				        <input class="input_ingr_name" type="text" name="name" placeholder="재료명을 입력해주세요." />
				        <input class="input_ingr_weight" type="number" name="weight" placeholder="재료량을 입력해주세요." />
				        <button type="submit">전송</button>
				    </form>
                     
                     <hr width='90%'>
                     <!--  재료 테이블 시작 -->
                     <table id="ingr_table" border="1"></table>

					 <%
						// 해당 레시피의 재료명과 재료량을 배열에 담아서 js로 넘기기
                     	ArrayList<ArrayList<BakeryVO>> taste2 = (ArrayList<ArrayList<BakeryVO>>)request.getAttribute("taste2");
                     	arr_len = taste2.get(1).size();
                     	ingrName_java = new String[arr_len];  //재료명을 담을 배열
                     	ingrWeight_java = new String[arr_len]; //재료량을 담을 배열 
                     	
                     	//재료명과 재료량을 배열로 저장하는 반복문
                     	for(int i=0; i<taste2.get(1).size(); i++) {
                     		ingrName_java[i] = taste2.get(1).get(i).getIngr_name();
                     		ingrWeight_java[i] = taste2.get(1).get(i).getIngr_weight();
                     	}
                	
                     %>	

                     <script>
                     	// jsp 코드의 재료명 배열을 자바스크립트 배열로 옮기기 
                     	let ingrName = new Array();
                     	<% for(int i=0; i<arr_len; i++) {%>
                     		ingrName.push('<%=ingrName_java[i]%>');
                     	<%}%>
                     		

                     	let ingrWeight = new Array();
                     	<% for(int i=0; i<arr_len; i++) {%>
                     		ingrWeight.push('<%=ingrWeight_java[i] %>');    
                     	<%}%>
                     	
                     	// 클래스에 넣어주기 위해 딕셔너리 생성 (key-ingrName, value-ingrWeight)
                     	let ingrTable = {};
                     	for(var j=0; j<(ingrName.length)-1; j++) {
                     		let key = ingrName[j];
                     		ingrTable[key] = ingrWeight[j];
                     	}
                     	
                     	console.log(ingrName, ingrWeight);
                     	console.log(ingrTable);
                     	
                     	// 객체 생성
                     	const recipeTable = new RecipeTable(ingrTable);
                     	console.log(recipeTable);
                     	
                     	const form = document.querySelector(".form_ingr");
                        const nameInput = document.querySelector(".input_ingr_name");
                        const weightInput = document.querySelector(".input_ingr_weight");
                        let table = document.getElementById('ingr_table');

                        const getInputValue = (/** @type { Event } */ event) => {
                            event.preventDefault();
                            event.stopPropagation();
                            let nameValue = nameInput.value;
                            let weightValue = weightInput.value;
                            recipeTable.update(nameValue, weightValue)
                            table.innerHTML = recipeTable.toHtml();
                        };

                        const init = () => {
                            form.addEventListener("submit", getInputValue);
                            table.innerHTML = recipeTable.toHtml();
                        };

                        init();
                     	
                     	
                     </script>
                  
                  
  				// 레시피 테이블   
  				<%              
                  for(int i=0; i<taste2.get(0).size(); i++) {
               		out.print("<tr>");
               		out.print("<td>" + taste2.get(0).get(i).getR_content() + "</td>");
						out.print("<td>" + taste2.get(0).get(i).getR_img() + "</td>");
						out.print("<td>" + taste2.get(0).get(i).getR_order() + "</td>");
						out.print("</tr>");
               		}
                  out.print("</table>");
                  
                %>
                    
                  </div>
                  
                  <!--  버튼 3 레시피 시작 -->
                  <div class="tab-pane" id="reviews">
                    <div class="comments reviews">
                      <% 
                  ArrayList<ArrayList<BakeryVO>> taste3 = (ArrayList<ArrayList<BakeryVO>>)request.getAttribute("taste3");
                  
                  out.print("<table>");
                  // 재료 테이블 
                  for(int i=0; i<taste3.get(1).size(); i++) {
                 		out.print("<tr>");
                 		out.print("<td>" + taste3.get(1).get(i).getIngr_name() + "</td>");
  						out.print("<td>" + taste3.get(1).get(i).getIngr_weight() + "</td>");
  						out.print("</tr>");
                 		}
                  out.print("</table>");  
                
                  out.print("<hr>");
                  out.print("<table>");
  				// 레시피 테이블                 
                  for(int i=0; i<taste3.get(0).size(); i++) {
               		out.print("<tr>");
               		out.print("<td>" + taste3.get(0).get(i).getR_content() + "</td>");
						out.print("<td>" + taste3.get(0).get(i).getR_img() + "</td>");
						out.print("<td>" + taste3.get(0).get(i).getR_order() + "</td>");
						out.print("</tr>");
               		}
                  out.print("</table>");
                  
                  %>
                      <div class="comment clearfix">
                        <div class="comment-avatar"><img src="" alt="avatar"/></div>
                        <div class="comment-content clearfix">
                          <div class="comment-author font-alt"><a href="#">Mark Stone</a></div>
                          <div class="comment-body">
                            <p>Europe uses the same vocabulary. The European languages are members of the same family. Their separate existence is a myth.</p>
                          </div>
                          <div class="comment-meta font-alt">Today, 14:59 -<span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star-off"></i></span><span><i class="fa fa-star star-off"></i></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="comment-form mt-30">
                      <h4 class="comment-form-title font-alt">Add review</h4>
                      <form method="post">
                        <div class="row">
                          <div class="col-sm-4">
                            <div class="form-group">
                              <label class="sr-only" for="name">Name</label>
                              <input class="form-control" id="name" type="text" name="name" placeholder="Name"/>
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <label class="sr-only" for="email">Name</label>
                              <input class="form-control" id="email" type="text" name="email" placeholder="E-mail"/>
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <select class="form-control">
                                <option selected="true" disabled="">Rating</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                              </select>
                            </div>
                          </div>
                          <div class="col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" id="" name="" rows="4" placeholder="Review"></textarea>
                            </div>
                          </div>
                          <div class="col-sm-12">
                            <button class="btn btn-round btn-d" type="submit">Submit Review</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module-small">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Related Products</h2>
              </div>
            </div>
            <div class="row multi-columns-row">
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="assets/images/shop/product-11.jpg" alt="Accessories Pack"/>
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="#">Accessories Pack</a></h4>Â£9.00
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="assets/images/shop/product-12.jpg" alt="Menâs Casual Pack"/>
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="#">Menâs Casual Pack</a></h4>Â£12.00
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="assets/images/shop/product-13.jpg" alt="Menâs Garb"/>
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="#">Menâs Garb</a></h4>Â£6.00
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="assets/images/shop/product-14.jpg" alt="Cold Garb"/>
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="#">Cold Garb</a></h4>Â£14.00
                </div>
              </div>
            </div>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Exclusive products</h2>
                <div class="module-subtitle font-serif">The languages only differ in their grammar, their pronunciation and their most common words.</div>
              </div>
            </div>
            <div class="row">
              <div class="owl-carousel text-center" data-items="5" data-pagination="false" data-navigation="false">
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-1.jpg" alt="Leather belt"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div>
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-3.jpg" alt="Derby shoes"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div>
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-2.jpg" alt="Leather belt"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div>
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-4.jpg" alt="Leather belt"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div>
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-5.jpg" alt="Chelsea boots"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div>
                <div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="#"><img src="assets/images/shop/product-6.jpg" alt="Leather belt"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
		<%@ include file="footer.jsp" %>       
		</div>
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