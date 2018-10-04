package edu.flash.biolap.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import edu.flash.biolap.dao.IProductDao;
import edu.flash.biolap.db.ConnectionManager2;
import edu.flash.biolap.db.DBUtils;
import edu.flash.biolap.po.Product;

public class ProductDaoImpl implements IProductDao {
	
	private ConnectionManager2 connectionManager2;
	private DBUtils dbUtils;
	

	public ProductDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager2 = new ConnectionManager2();
		this.dbUtils = new DBUtils();
	}


	@Override
	public List<Product> selectProductAll() {
		// TODO Auto-generated method stub
		// 步骤1：创建一个空的集合准备存放查询的结果
				List<Product> lstProduct= new ArrayList<Product>();
				// 步骤2：获取一个数据库的连接对象
				 Connection conn = this.connectionManager2.openConnection();
				// 步骤3：创建查询语句的模板
				String strSQL = "select product_department,count(*) from product,product_class group by product_department";
				// 步骤4：使用dbutils方法实现查询操作
				ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL,
						new Object[] {});
				try {
					while (resultSet.next()) {
						// 步骤5-1：创建一个Customers对象
						Product product = new Product();
						product.setProduct_family(resultSet.getString(1));
						product.setCount(resultSet.getInt(2));
						
						// 步骤5-2：将封装好的对象添加到List集合中
						lstProduct.add(product);
					}
					// 返回结果
					return lstProduct;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return null;
				} finally {
					// 步骤6：关闭数据库连接
					this.connectionManager2.closeConnection(conn);
				}
	}

}