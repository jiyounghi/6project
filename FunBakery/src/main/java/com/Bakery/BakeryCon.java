package com.Bakery;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BakeryDAO;
import com.VO.BakeryVO;

@WebServlet("/BakeryCon")
public class BakeryCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BakeryDAO dao = new BakeryDAO();
		
		ArrayList<ArrayList<BakeryVO>> taste1 = new ArrayList<ArrayList<BakeryVO>>();
		ArrayList<ArrayList<BakeryVO>> taste2 = new ArrayList<ArrayList<BakeryVO>>();
		ArrayList<ArrayList<BakeryVO>> taste3 = new ArrayList<ArrayList<BakeryVO>>();
		
		int index1 = dao.findIndex(0, "taste1");
		taste1.add(dao.getRecipe(0, index1));
		taste1.add(dao.getIngredients(0, index1));
		
		int index2 = dao.findIndex(0, "taste2");
		taste1.add(dao.getRecipe(0, index2));
		taste1.add(dao.getIngredients(0, index2));
		
		int index3 = dao.findIndex(0, "taste3");
		taste1.add(dao.getRecipe(0, index3));
		taste1.add(dao.getIngredients(0, index3));
		
		BakeryVO breadInfo = dao.getBreadInfo(0);
		
		request.setAttribute("taste1", taste1);
		request.setAttribute("taste2", taste2);
		request.setAttribute("taste3", taste3);
		request.setAttribute("breadInfo", breadInfo);
		
//		return "shop_single_product.jsp";
		return "yejitest.jsp";
		
	}

}
