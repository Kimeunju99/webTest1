<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/delete.jsp</title>
</head>
<body>
	<%
		//jsp의 내장객체:request,response 사용가능 이유
	  	String bid = request.getParameter("no"); //문자열로 리턴되어 문자열로 받고
	  	int bno = Integer.parseInt(bid); //정수로 변환
	  	
	  	BoardDao dao = new BoardDao();
	  	boolean result = dao.delete(bno);
	  	if(result){
	  		response.sendRedirect("blist.jsp");
	  	}
	  %>
</body>
</html>