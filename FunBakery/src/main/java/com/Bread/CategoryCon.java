package com.Bread;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BreadDAO;
import com.VO.BreadVO;

@WebServlet("/CategoryCon")
public class CategoryCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BreadDAO dao = new BreadDAO();
		
		String cat = request.getParameter("cat");
		
		ArrayList<BreadVO> brlist = dao.category(cat);
		ArrayList<BreadVO> clist = dao.count();
		
		request.setAttribute("brlist",brlist);
		request.setAttribute("clist",clist);
		
		RequestDispatcher rd = request.getRequestDispatcher("category.jsp");
		rd.forward(request, response);
	}

}
