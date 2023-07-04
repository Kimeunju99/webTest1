package com.yedam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.BoardDao;
import com.yedam.board.BoardVO;

@WebServlet("/boardAdd")
public class AddBoardSevlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//title, writer, content
		String title = req.getParameter("title"); //input태그의 name 값이 title인 요소의 내용을 읽어옴
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		
		BoardVO board = new BoardVO();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		
		BoardDao dao = new BoardDao();
		boolean result = dao.insert(board);//입력처리
		
		if(result) {
			resp.sendRedirect("board/blist.jsp"); //요청재지정
		}else {
			resp.sendRedirect("board/app.jsp");
		}
		
	}
}
