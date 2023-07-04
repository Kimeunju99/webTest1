<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/detaol.jsp</title>
</head>
<body>
  <!-- 글번호 한 건 조회 -> 페이지 이동(새 페이지 작성) -->
  <%
  	String bid = request.getParameter("no"); //문자열로 리턴되어 문자열로 받고
  	int bno = Integer.parseInt(bid); //정수로 변환
  	
  	BoardDao dao = new BoardDao();
  	BoardVO brd = dao.showOne(bno);
  	dao.countup(brd.getNo()); //조회수 업데이트
  %>
  
  <table border='1'>
  	<tr>
  		<th>글번호</th><td><%=brd.getNo() %></td>
  	</tr>
  	<tr>
  		<th>제목</th><td><%=brd.getTitle() %></td>
  	</tr>
  	<tr>
  		<th>작성자</th><td><%=brd.getWriter() %></td>
  	</tr>
  	<tr>
  		<td colspan="2">
  		<textarea readonly rows="3" cols="30"><%=brd.getContent() %></textarea></td>
  	</tr>
  	<tr>
  		<td colspan="2" align="center">
  			<a href="modify.jsp?no=<%=brd.getNo() %>"><button>수정</button></a>
  			<button onclick="location.href='delete.jsp?no=<%=brd.getNo() %>'">삭제</button>
  		</td>
  	</tr>
  </table>
  <br>
  <a href="blist.jsp">목록으로</a>
</body>
</html>