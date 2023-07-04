<%@page import="com.yedam.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/blist.jsp</title>
</head>
<body>
	<h3>게시판</h3>
	<table border='1'>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<tbody>
		<%
	  		BoardDao dao = new BoardDao();
	  		List<BoardVO> list = dao.showAll();
			for(BoardVO b: list){
		%>
		<tr>
			<td><%=b.getNo() %></td>
			<td><a href="detail.jsp?no=<%=b.getNo() %>"><%=b.getTitle() %></a></td>
			<td><%=b.getWriter() %></td>
			<td><%=b.getCount() %></td>
		</tr>
		<% 
		 }
		%>
		</tbody>
	</thead>
	</table>
</body>
</html>