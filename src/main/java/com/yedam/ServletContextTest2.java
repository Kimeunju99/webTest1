package com.yedam;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletContextTest2")
public class ServletContextTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletContextTest2() {
        super();
    }

  //servletContext -> 생성자 -> ServletConfig(서블릿 정보 불러옴) -> init() ->service() or get/post
    @Override
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	ServletContext sc = config.getServletContext(); //sevletContext객체 반환
    	String msg = (String)sc.getAttribute("servletContext");
    	System.out.println("공유메시지: " + msg);
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
