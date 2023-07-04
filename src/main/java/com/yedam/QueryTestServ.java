package com.yedam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/QueryTestServ", "/queryTest" })
public class QueryTestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//service를 정의하지 않으면 요청방식에 따라 [get->doGet()] [post->doPost()] 실행
    public QueryTestServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get call");
		//parameter 전달: 한글은 제대로 전달이 안됨
		response.setContentType("text/html;charset=UTF-8;"); //한글 처리
		
		String id = request.getParameter("id"); //form name 정보를 받아옴
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String[] hobbys = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		String religion = request.getParameter("religion");
		String intro = request.getParameter("intro");
		
		//응답정보
		PrintWriter out = response.getWriter(); //사용자화면으로 출력 =출력스트림
		out.print("<p>ID: " + id + "</p>");
		out.print("<p>PW: " + pwd + "</p>");
		out.print("<p>NAME: " + name + "</p>");
		for(String hobby: hobbys) {
			out.print("<p>hobby: " + hobby + "</p>");			
		}
		out.print("<p>gender: " + gender + "</p>");
		out.print("<p>religion: " + religion + "</p>");
		out.print("<p>intro: " + intro + "</p>");
		
		out.print("<p>쿼리스트링: " +request.getQueryString()+"</p>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post call");
		//parameter 전달: 한글은 제대로 전달이 안됨
		response.setContentType("text/html;charset=UTF-8;"); //response(페이지 보여주는 content 타입 지정) 한글 처리
		request.setCharacterEncoding("UTF-8"); //request 한글처리
		
		//응답정보
		PrintWriter out = response.getWriter(); //사용자화면으로 출력 =출력스트림
		Enumeration<String> enm = request.getHeaderNames(); //입력 스트림
		while(enm.hasMoreElements()) {
			String elem = enm.nextElement();
			System.out.println("header:"+ elem + " | val:" + request.getHeader(elem));
		}
		
		ServletInputStream sis = request.getInputStream();
		int leng = request.getContentLength();
		byte[] buf = new byte[leng];
		sis.readLine(buf, 0, leng);
		String queryString = new String(buf);
		out.print("<p>쿼리스트링: " + queryString +"</p>");
		
	}

}
