package com.yedam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.BoardDao;
import com.yedam.board.BoardVO;

@WebServlet("/boardModify")
public class ModifyBoardServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String no = req.getParameter("no");
		int bno = Integer.parseInt(no);
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		BoardVO board = new BoardVO();
		board.setNo(bno);
		board.setTitle(title);
		board.setContent(content);
		BoardDao dao = new BoardDao();
		boolean result = dao.update(bno, board);
		
		if(result) {
			resp.sendRedirect("board/detail.jsp?no="+bno);
		}
	}
}
