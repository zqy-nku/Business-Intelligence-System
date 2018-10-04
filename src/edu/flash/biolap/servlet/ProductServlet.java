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
import edu.flash.biolap.biz.IProductBiz;
import edu.flash.biolap.biz.IWholeBiz;
import edu.flash.biolap.biz.impl.LoginBizImpl;
import edu.flash.biolap.biz.impl.ProductBizImpl;
import edu.flash.biolap.biz.impl.WholeBizImpl;
import edu.flash.biolap.po.Product;
import edu.flash.biolap.po.Users;




import java.io.File;
import java.util.ArrayList;
import java.util.List;




import edu.flash.biolap.servlet.CSVUtils;

/**
 * Servlet implementation class LoginServlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductServlet() {
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
		
		IProductBiz productBiz = new ProductBizImpl();
		List<Product> lstProduct = productBiz.selectProductAll();
		
		session.setAttribute("user", user);
	
		List<String> dataList=new ArrayList<String>();
		dataList.add("letter\tfrequency");
		
		for(Product p: lstProduct){
			dataList.add(p.getProduct_family()+"\t"+Integer.toString(p.getCount()));
			
		}
	       
	        boolean isSuccess=CSVUtils.exportCsv(new File("E:/dev/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BI-OLAP/tsv/test.csv"), dataList);
	        System.out.println(isSuccess);
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/histogram.jsp");
	    		dispatcher.forward(request, response);
	}

}
