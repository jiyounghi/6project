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
    
	<style>
	    #modal.modal-overlay {
	    display: none;
	    }
	    .modal-dialog {
	        width:600px;
	        margin:30px auto
	    }
	    .modal-content {
	        -webkit-box-shadow:0 5px 5px 0 rgba(0, 0, 0, .1);
	        box-shadow:0 5px 5px 0 rgba(0, 0, 0, .1);
	        border-radius: 10px;
	        border: 1px solid rgba(0, 0, 0, .2);
	    }
	    .modal-header {
	        min-height:16.43px;
	        padding:15px 17px 14px;
	        border-bottom:1px solid #b4b4b4;
	        background:#efefef;
	        border-radius:10px 10px 0 0 ;
	    }
	    .weighing_modal {width:100%; margin-bottom:10px;}
	    .weighing_modal tr {border-bottom:1px solid #e9e9e9;}
	    .weighing_modal th {width:120px; color:#000; padding:9px 2px 9px 15px;}
	    .weighing_modal td {text-align:right; line-height:1.6; color:#888; padding:9px 15px 9px 2px;}
	    .weighing_modal tr:nth-child(2n+2) {background:#f9f9f9;}
	    .modal-footer {
	        padding:20px 0 40px;
	        text-align:center;
	        border-top:1px solid #b4b4b4;
	        background:#efefef;
	        border-radius: 0 0 10px 10px;
	    }
	    body, html, th, td, input, select, textarea, button {font-family: 'Noto Sans KR', sans-serif;}
	    .close {
	        float:right;
	        font-size:21px;
	        font-weight:700;
	        line-height:1;
	        color:#000;
	        text-shadow:0 1px 0 #fff;
	        filter:alpha(opacity=20);
	        opacity:.2
	    }
	    button{
	        outline-style: none;
	    }
    </style>
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
              <div class="col-sm-6 mb-sm-40">
                  <%out.print("<img style='width: 500px;' src=" + breadInfo.getB_img() +" alt='Bread image'>");%>
              </div>
              <div class="col-sm-6" id="breadinfo">
                <div class="row" style="margin-bottom: 40px">
                  <div class="col-sm-12">
                    <h1 class="product-title" id="breadname"><%=breadInfo.getB_name() %></h1>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description" id="breaddesc">
                      <%=breadInfo.getB_desc() %>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            <div class="row mt-70">
              <div class="col-sm-12">
                <ul class="nav nav-tabs font-alt" role="tablist">
                  
                  <li class="active"><a id="taste1" href="#description" data-toggle="tab">레시피1</a></li>
                  <li><a id="taste2" href="#data-sheet" data-toggle="tab">레시피2</a></li>
                  <li><a id="taste3" href="#reviews" data-toggle="tab">레시피3</a></li>
                  
                  <div class="best_tit_rmn">
                      <button id="btnMeasureModal" type="button" class="btn btn-default" onclick="modalOn()" style="float:right; margin:0 15px 5px 0;">계량법 안내</button>
                  </div>
    <div id="modal" class="modal-overlay">
        <div class="modal-dialog">      
            <div class="modal-content md" style="padding:0;">
                <div class="modal-header md" text-align="center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="modalOff()"><span aria-hidden="true"><img src="https://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                    <h4 class="modal-title md">계량법 안내</h4>
                </div>
                <div class="modal-body md">
                    <table class="weighing_modal md">
                        <tbody>
                            <tr>
                                <th>1큰술(1T, 1Ts)<br>= 1숟가락</th>
                                <td>15ml = 3t<br>(계량스푼이 없는 경우 밥숟가락으로 볼록하게 가득 담으면 1큰술)</td>
                            </tr>
                            <tr>
                                <th>1작은술(1t, 1ts)</th>
                                <td>5ml<br>(티스푼으로는 2스푼이 1작은술)</td>
                            </tr>
                            <tr>
                                <th>1컵(1Cup, 1C)</th>
                                <td>200ml = 16T(한국,중국,일본)<br>(미국 및 서양의 경우 1C가 240~250ml이므로 계량컵 구매 사용시 주의)</td>
                            </tr>
                            <tr>
                                <th>1종이컵</th>
                                <td>180ml</td>
                            </tr>
                            <tr>
                                <th>1oz</th>
                                <td>28.3g</td>
                            </tr>
                            <tr>
                                <th>1파운드(lb)</th>
                                <td>약 0.453 킬로그램(kg)</td>
                            </tr>
                            <tr>
                                <th>1갤런(gallon)</th>
                                <td>약 3.78 리터(ℓ)</td>
                            </tr>
                            <tr>
                                <th>1꼬집</th>
                                <td>약 2g 정도이며 '약간'이라고 표현하기도 함</td>
                            </tr>
                            <tr>
                                <th>조금</th>
                                <td>약간의 2~3배</td>
                            </tr>
                            <tr>
                                <th>적당량</th>
                                <td>기호에 따라 마음대로 조절해서 넣으란 표현</td>
                            </tr>
                        </tbody>
                    </table>            
                </div>
                <div class="modal-footer md">
                </div>
            </div>
        </div>
    </div>
                </ul>
                <div class="tab-content">
                	<!-- 버튼1 시작 -->
                  <div class="tab-pane active" id="description">
                     <!--  버튼1의 내용!  -->
                     
                     <div class="best_tit">
                     	
                          	<b id="r_index">재료</b>
                          	<!--  재료 비율 계산기 + 재료테이블   -->
                          	<form class="form_ingr">
			                    <input class="input_ingr_name" type="text" name="name" placeholder="재료명을 입력해주세요." />
			                    <input class="input_ingr_weight" type="number" name="weight" placeholder="재료량을 입력해주세요." />
			                    <button type="submit">전송</button>
			                </form>
                          
                      </div>
                     
                
                     
                     <!-- <hr width='90%'> -->
                     <!--  재료 테이블 시작 -->
          

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
                     
                     <script src="assets/js/test.js"></script>
                     
                     <!-- toHtml() 결과가 들어갈 곳 -->
                     <ul class='ingre_one' id='one_type'></ul>
                     
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
                        recipeTable = new RecipeTable(ingrTable);
                        console.log(recipeTable);
                        
                        const form = document.querySelector(".form_ingr");
                        const nameInput = document.querySelector(".input_ingr_name");
                        const weightInput = document.querySelector(".input_ingr_weight");
                        

                           
                         
                          let table = document.getElementById('one_type');
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
                        
                      <hr class="divider-w pt-20">
                      
                      <!-- 레시피 -->
                      <div class="view_step">
                      <div class="best_tit">
                          <b id="r_index">조리순서</b>
                      </div>
                      <div>
                      <% for(int i=0; i<taste1.get(0).size(); i++) {%>
     
                          <div id="stepDiv" class="view_step_cont">
                              <div id="steporder" class="media-left"><%= i+1 %>
                              </div>
                              <div id="stepdescr" class="media-body"><%= taste1.get(0).get(i).getR_content()  %>
                              </div>
                              <div id="stepimg" class="media-right">
                                  <img width="200px" src="<%=taste1.get(0).get(i).getR_img() %>">
                              </div>
                              
                          </div>
                      <%} %>
                      
                      </div>

                      
                  	  </div></div>
                  	  
                  	  
                  	  
                  	  
                  	  <!--  버튼 2 시작 -->
                  <div class="tab-pane" id="data-sheet">
                  
                  
                   <!--  재료 비율 계산기 + 재료테이블   -->
                		<div class="best_tit">
                     	
                          	<b id="r_index">재료</b>
                          	<!--  재료 비율 계산기 + 재료테이블   -->
                          	<form class="form_ingr2">
			                    <input class="input_ingr_name2" type="text" name="name" placeholder="재료명을 입력해주세요." />
			                    <input class="input_ingr_weight2" type="number" name="weight" placeholder="재료량을 입력해주세요." />
			                    <button type="submit">전송</button>
			                </form>
                          
                      </div>
                
                     
                     <!-- <hr width='90%'> -->
                     
                     <!-- toHtml() 결과가 들어갈 곳 -->
                     <ul class='ingre_two' id='two_type'></ul>

                <%
                  // 해당 레시피의 재료명과 재료량을 배열에 담아서 js로 넘기기
                        ArrayList<ArrayList<BakeryVO>> taste2 = (ArrayList<ArrayList<BakeryVO>>)request.getAttribute("taste2");
                        int arr_len2 = taste2.get(1).size();
                        String ingrName_java2[] = new String[arr_len2];  //재료명을 담을 배열
                        String ingrWeight_java2 [] = new String[arr_len2]; //재료량을 담을 배열 
                        
                        //재료명과 재료량을 배열로 저장하는 반복문
                        for(int i=0; i<taste2.get(1).size(); i++) {
                           ingrName_java2[i] = taste2.get(1).get(i).getIngr_name();
                           ingrWeight_java2[i] = taste2.get(1).get(i).getIngr_weight();
                        }
                   
                     %>   

                     <script>
                        // jsp 코드의 재료명 배열을 자바스크립트 배열로 옮기기 
                        let ingrName2 = new Array();
                        <% for(int i=0; i<arr_len2; i++) {%>
                           ingrName2.push('<%=ingrName_java2[i]%>');
                        <%}%>
                           

                        let ingrWeight2 = new Array();
                        <% for(int i=0; i<arr_len2; i++) {%>
                           ingrWeight2.push('<%=ingrWeight_java2[i] %>');    
                        <%}%>
                        
                        // 클래스에 넣어주기 위해 딕셔너리 생성 (key-ingrName, value-ingrWeight)
                        let ingrTable2 = {};
                        for(var j=0; j<(ingrName2.length)-1; j++) {
                           let key2 = ingrName2[j];
                           ingrTable2[key2] = ingrWeight2[j];
                        }
                        
                        console.log("2번째 레시피", ingrName2, ingrWeight2);
                        console.log("2번째 딕셔너리", ingrTable2);
                        
                        // 객체 생성
                        const recipeTable2 = new RecipeTable(ingrTable2);
                        console.log("2번째 객체 생성",recipeTable2);
                        
                        const form2 = document.querySelector(".form_ingr2");
                        const nameInput2 = document.querySelector(".input_ingr_name2");
                        const weightInput2 = document.querySelector(".input_ingr_weight2");
                        let table2 = document.getElementById('two_type');
                        console.log("table2 생성됐냐?", table2);

                        const getInputValue2 = (/** @type { Event } */ event) => {
                            event.preventDefault();
                            event.stopPropagation();
                            let nameValue2 = nameInput2.value;
                            let weightValue2 = weightInput2.value;
                            recipeTable2.update(nameValue2, weightValue2)
                            table2.innerHTML = recipeTable2.toHtml();
                        };

                        const init2 = () => {
                            form.addEventListener("submit", getInputValue2); /* , {passive:false} */
                            console.log("innerHTML table2 추적", recipeTable2);
                            table2.innerHTML = recipeTable2.toHtml();
                        };

                        init2();
                        
                        
                     </script>
                        
                      <hr class="divider-w pt-20"><!-- 레시피 --><div class="view_step">
                      <div class="best_tit">
                          <b id="r_index">조리순서</b>
                      </div>
                      <div>
                      <% for(int i=0; i<taste2.get(0).size(); i++) {%>
     
                          <div id="stepDiv" class="view_step_cont">
                              <div id="steporder" class="media-left"><%= i+1 %>
                              </div>
                              <div id="stepdescr" class="media-body"><%= taste2.get(0).get(i).getR_content()  %>
                              </div>
                              <div id="stepimg" class="media-right">
                                  <img width="200px" src="<%=taste2.get(0).get(i).getR_img() %>">
                              </div>
                              
                          </div>
                      <%} %>
                      
                      </div>

                      
                  </div></div>
                  
                  <!--  버튼 3 시작 -->
                  <div class="tab-pane" id="reviews">
                    <div class="comments reviews">
                     
                     
                     <!--  재료 비율 계산기 + 재료테이블   -->
                		<div class="best_tit">
                     	
                          	<b id="r_index">재료</b>
                          	<!--  재료 비율 계산기 + 재료테이블   -->
                          	<form class="form_ingr3">
			                    <input class="input_ingr_name3" type="text" name="name" placeholder="재료명을 입력해주세요." />
			                    <input class="input_ingr_weight3" type="number" name="weight" placeholder="재료량을 입력해주세요." />
			                    <button type="submit">전송</button>
			                </form>
                      </div>
                     
                     <!-- <hr width='90%'> -->
                     
                     <!-- toHtml() 결과가 들어갈 곳 -->
                     <ul class='ingre_three' id='three_type'></ul>

                <%
                  // 해당 레시피의 재료명과 재료량을 배열에 담아서 js로 넘기기
                        ArrayList<ArrayList<BakeryVO>> taste3 = (ArrayList<ArrayList<BakeryVO>>)request.getAttribute("taste3");
                        int arr_len3 = taste3.get(1).size();
                        String ingrName_java3 [] = new String[arr_len3];  //재료명을 담을 배열
                        String ingrWeight_java3 [] = new String[arr_len3]; //재료량을 담을 배열 
                        
                        //재료명과 재료량을 배열로 저장하는 반복문
                        for(int i=0; i<taste3.get(1).size(); i++) {
                           ingrName_java3[i] = taste3.get(1).get(i).getIngr_name();
                           ingrWeight_java3[i] = taste3.get(1).get(i).getIngr_weight();
                        }
                   
                     %>   

                     <script>
                        // jsp 코드의 재료명 배열을 자바스크립트 배열로 옮기기 
                        let ingrName3 = new Array();
                        <% for(int i=0; i<arr_len3; i++) {%>
                           ingrName3.push('<%=ingrName_java3[i]%>');
                        <%}%>
                           

                        let ingrWeight3 = new Array();
                        <% for(int i=0; i<arr_len3; i++) {%>
                           ingrWeight3.push('<%=ingrWeight_java3[i] %>');    
                        <%}%>
                        
                        // 클래스에 넣어주기 위해 딕셔너리 생성 (key-ingrName, value-ingrWeight)
                        let ingrTable3 = {};
                        for(var k=0; k<(ingrName3.length)-1; k++) {
                           let key3 = ingrName3[k];
                           ingrTable3[key3] = ingrWeight3[k];
                        }
                        
                        console.log("3번째 레시피", ingrName3, ingrWeight3);
                        console.log("3번째 딕셔너리", ingrTable3);
                        
                        // 객체 생성
                        const recipeTable3 = new RecipeTable(ingrTable3);
                        console.log("3번째 객체 생성",recipeTable3);
                        
                        const form3 = document.querySelector(".form_ingr3");
                        const nameInput3 = document.querySelector(".input_ingr_name3");
                        const weightInput3 = document.querySelector(".input_ingr_weight3");
                        let table3 = document.getElementById('three_type');
                        console.log("table3 생성됐냐?", table3);

                        const getInputValue3 = (/** @type { Event } */ event) => {
                            event.preventDefault();
                            event.stopPropagation();
                            let nameValue3 = nameInput3.value;
                            let weightValue3 = weightInput3.value;
                            recipeTable3.update(nameValue3, weightValue3)
                            table3.innerHTML = recipeTable3.toHtml();
                        };

                        const init3 = () => {
                            form.addEventListener("submit", getInputValue3);
                            console.log("innerHTML table3 추적", recipeTable3);
                            table3.innerHTML = recipeTable3.toHtml();
                        };

                        init3();
                        
                        
                     </script>
                                         
                      <hr class="divider-w pt-20"><!-- 레시피 --><div class="view_step">
                      <div class="best_tit">
                          <b id="r_index">조리순서</b>
                      </div>
                      <div>
                      <% for(int i=0; i<taste3.get(0).size(); i++) {%>
     
                          <div id="stepDiv" class="view_step_cont">
                              <div id="steporder" class="media-left"><%= i+1 %>
                              </div>
                              <div id="stepdescr" class="media-body"><%= taste3.get(0).get(i).getR_content()  %>
                              </div>
                              <div id="stepimg" class="media-right">
                                  <img width="200px" src="<%=taste3.get(0).get(i).getR_img() %>">
                              </div>
                              
                          </div>
                      <%} %>
                      
                      </div>

                      
                  </div></div></div>
                  
                  
                  
                  
                  
                </div>
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
    
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>

        const modal = document.getElementById("modal")

        function modalOn() {
            modal.style.display = "block"
            $('tbody,tr,th,td').addClass('md');
        }

        function isModalOn() {
            return modal.style.display === "block"
        }

        function modalOff() {
            modal.style.display = "none"
        }

        modal.addEventListener("click", e => {
            const evTarget = e.target
            if(evTarget.classList.contains("modal-content")) {
                modalOff()
            }
        })

        window.addEventListener("keyup", e => {
            if(isModalOn() && e.key === "Escape") {
                modalOff()
            }
        })

        $('#modal').click(function(e){
          if(!$(e.target).hasClass('md')){
            $('#modal').hide();
          }
        });
        
    </script> 
  </body>
</html>
