package edu.flash.biolap.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.flash.biolap.biz.ILoginBiz;
import edu.flash.biolap.biz.IWholeBiz;
import edu.flash.biolap.biz.impl.LoginBizImpl;
import edu.flash.biolap.biz.impl.WholeBizImpl;
import edu.flash.biolap.po.Users;


/**
 * Servlet implementation class LoginServlet
 */
public class WholeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WholeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings({ "unchecked" })
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Users user = (Users)session.getAttribute("user");
		
		IWholeBiz wholeBiz = new WholeBizImpl();
		int sales_count = wholeBiz.selectSales();
		int warehouse_count = wholeBiz.selectWarehouse();
		int customers_count = wholeBiz.selectCustomers();
		int employees_count = wholeBiz.selectEmployees();
		session.setAttribute("sales_count", sales_count);
		session.setAttribute("warehouse_count", warehouse_count);	
		session.setAttribute("customers_count", customers_count);	
		session.setAttribute("employees_count", employees_count);	
		session.setAttribute("user", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/index.jsp");
		dispatcher.forward(request, response);
	}

}
