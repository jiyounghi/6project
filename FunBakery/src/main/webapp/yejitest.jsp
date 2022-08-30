<%@page import="com.VO.BakeryVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<ArrayList<BakeryVO>> list = (ArrayList<ArrayList<BakeryVO>>)session.getAttribute("taste1");
		BakeryVO breadInfo = (BakeryVO)session.getAttribute("breadInfo");
	%>
	<table>
		<tr>
			<td>빵 이름</td>
			<td>빵 설명</td>
			<td>빵 사진</td>
		</tr>
		
	<%
		for (int i = 0; i < list.size(); i++){ 
			for (int j = 0; %>
		<tr>
			<td><%=list.get(i). %></td>
			<td><%=list.get(i).getTel() %></td>
			<td><%=list.get(i).getAddress() %></td>
		<td>
		<% 
		}
	%>
</body>
</html>