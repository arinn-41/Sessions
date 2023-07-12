package com.session;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class showroom
 */
@WebServlet("/showroom")
public class showroom extends HttpServlet
{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		Daodata.car(req);
		
		List<Dtodata> li=Daodata.hero();
		HttpSession hs=req.getSession();
		hs.setAttribute("li", li);
		 
		RequestDispatcher rs=req.getRequestDispatcher("main.jsp");
		rs.forward(req, resp);
		
	}
}
