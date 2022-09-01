package com.Bakery;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BakeryDAO;
import com.VO.BakeryVO;

@WebServlet("/CategoryConS")
public class CategoryConS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BakeryDAO dao = new BakeryDAO();
		
		ArrayList<BakeryVO> brlist = new ArrayList<>();
		ArrayList<BakeryVO> clist = new ArrayList<>();
		ArrayList<BakeryVO> plist = new ArrayList<>();
		
		HttpSession session = request.getSession();
		
		brlist = (ArrayList)session.getAttribute("brlist");
		clist = (ArrayList)session.getAttribute("clist");
		plist = (ArrayList)session.getAttribute("plist");
		
		if(brlist != null) {
			session.removeAttribute("brlist");
			session.removeAttribute("clist");
			session.removeAttribute("plist");
		}
		
		String cat = request.getParameter("cat");
		
		brlist = dao.category(cat);
		clist = dao.count();
		plist = dao.popular();
		
		session.setAttribute("brlist",brlist);
		session.setAttribute("clist",clist);
		session.setAttribute("plist", plist);
		
		response.sendRedirect("category.jsp#se");
	}

}
