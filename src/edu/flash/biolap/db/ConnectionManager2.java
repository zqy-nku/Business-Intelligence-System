package edu.flash.biolap.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;

public class ConnectionManager2 {

	public Connection openConnection() {
		try {
			System.out.println("[ConnectionManager]：打开数据库连接对象……" + new Date());
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost\\SQLEXPRESS;databaseName=FoodMart 2005;IntegratedSecurity=True";
			return DriverManager.getConnection(url);
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("[ConnectionManager]：打开数据库连接对象失败……" + new Date());
			return null;
		}
	}

	public void closeConnection(Connection conn) {
		if (conn != null) {
			try {
				System.out.println("[ConnectionManager]：关闭数据库连接对象……"
						+ new Date());
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("[ConnectionManager]：关闭数据库连接对象失败……"
						+ new Date());
			}
		}
	}
}
