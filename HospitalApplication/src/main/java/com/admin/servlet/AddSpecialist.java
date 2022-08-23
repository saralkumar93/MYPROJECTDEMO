package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBConnection;
import com.entity.User;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String specName= req.getParameter("specName");
		
		SpecialistDao dao = new SpecialistDao(DBConnection.getConn());
		boolean f = dao.addSpecialist(specName);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("sucMsg", "Specialist added");
			resp.sendRedirect("admin/index.jsp");
		} else {
			RequestDispatcher reqd = req.getRequestDispatcher("admin/index.jsp");
		
		reqd.forward(req, resp);
		
		
	}
	
	}

}
