<%@page import="javax.swing.text.html.HTMLDocument"%>
<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/modify.jsp</title>
</head>
<body>
	<!-- 글번호 기준으로 한건 조회 ->페이지 작성 ->저장 버튼 클릭하면 변경 후 목록 이동 -->
	<%	
	  	String bid = request.getParameter("no"); //문자열로 리턴되어 문자열로 받고
	  	int bno = Integer.parseInt(bid); //정수로 변환
	
	  	BoardDao dao = new BoardDao();
	  	BoardVO brd = dao.showOne(bno);
	 %>
  		<table border="1">
  	<form action="../boardModify">
	 	<tr>
	 		<th>글번호</th><td>
	 		<Input type="text" readonly name="no" value="<%=brd.getNo() %>"></td>
	 	</tr>
	 	<tr>
	 		<th>제목</th><td>
	 		<textarea rows="1" cols="30" name="title"><%=brd.getTitle() %></textarea></td>
	 	</tr> 
	 	<tr>
	 		<th>작성자</th><td>
	 		<Input type="text" readonly value="<%=brd.getWriter() %>"></td>
	 	</tr>
		<tr>
	 		<th>내용</th><td>
	 		<textarea rows="3" cols="30" name="content"><%=brd.getContent() %></textarea></td>
		</tr>
		<tr align="center">
			<td><button type="submit">저장</button>
			<a href="blist.jsp"><button>취소</button></a></td>
  		</tr>
  	</form>
		</table>
</body>
</html>