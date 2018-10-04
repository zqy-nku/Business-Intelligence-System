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

import edu.flash.biolap.biz.ISalesBiz;
import edu.flash.biolap.biz.IWholeBiz;
import edu.flash.biolap.biz.impl.SalesBizImpl;
import edu.flash.biolap.biz.impl.WholeBizImpl;
import edu.flash.biolap.po.Sales;
import edu.flash.biolap.po.Users;




import java.io.File;
import java.util.ArrayList;
import java.util.List;









import edu.flash.biolap.servlet.CSVUtils;

/**
 * Servlet implementation class LoginServlet
 */
public class GraphSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GraphSalesServlet() {
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
			
		ISalesBiz salesBiz = new SalesBizImpl();
		List<Sales> lstSales = salesBiz.selectSales();
		
		session.setAttribute("user", user);
	
		List<String> dataList1 =new ArrayList<String>();
		List<String> dataList2 =new ArrayList<String>();		
		for(Sales s: lstSales){
			dataList1.add(s.getStore_state());	
			dataList1.add(Integer.toString(s.getCount()));
		}
	       
		 boolean isSuccess=CSVUtils.exportCsv(new File("D:/test/shuchu.csv"), dataList1);
	        System.out.println(isSuccess);
	    
	
		
	    session.setAttribute("dataList1", dataList1);
	    session.setAttribute("dataList2", dataList2);
	    session.setAttribute("lstSales", lstSales);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/map.jsp");
	    dispatcher.forward(request, response);
	}

}
