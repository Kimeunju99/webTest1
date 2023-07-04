<%@page import="com.yedam.common.ProdDAO"%>
<%@page import="com.yedam.common.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저목록</title>
</head>
<body>
	<ul>
	<%
		ProdDAO dao = new ProdDAO();
		List<ProductVO> list = dao.list();
		for(ProductVO p: list){
			%>
			<li>제품명 <%=p.getProdName() %></li>
			<% 
		}
	%>
	</ul>
	<a href="../login/second">second servlet</a>
</body>
</html>