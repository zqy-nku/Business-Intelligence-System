package edu.flash.biolap.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.flash.biolap.dao.IWholeDao;
import edu.flash.biolap.db.ConnectionManager2;
import edu.flash.biolap.db.DBUtils;

public class WholeDaoImpl implements IWholeDao {
	
	private ConnectionManager2 connectionManager2;
	private DBUtils dbUtils;
	

	public WholeDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager2 = new ConnectionManager2();
		this.dbUtils = new DBUtils();
	}


	@Override
	public int selectSales() {
		// TODO Auto-generated method stub
		 Connection conn = this.connectionManager2.openConnection();
			
			String strSQL = "select count(*) from sales_fact_1997";
			ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL);
			try {
				if(resultSet.next()){
					int sales_count = resultSet.getInt(1);
					return sales_count;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return  0;
			} finally{
				this.connectionManager2.closeConnection(conn);
			}	
			return 0;
	}


	@Override
	public int selectWarehouse() {
		// TODO Auto-generated method stub
		Connection conn = this.connectionManager2.openConnection();
		
		String strSQL = "select count(*) from inventory_fact_1997";
		ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL);
		try {
			if(resultSet.next()){
				int warehouse_count = resultSet.getInt(1);
				return warehouse_count;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  0;
		} finally{
			this.connectionManager2.closeConnection(conn);
		}	
		return 0;
	}


	@Override
	public int selectCustomers() {
		// TODO Auto-generated method stub
		Connection conn = this.connectionManager2.openConnection();
		
		String strSQL = "select count(*) from customer";
		ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL);
		try {
			if(resultSet.next()){
				int customer_count = resultSet.getInt(1);
				return customer_count;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  0;
		} finally{
			this.connectionManager2.closeConnection(conn);
		}	
		return 0;
	}


	@Override
	public int selectEmployees() {
		// TODO Auto-generated method stub
Connection conn = this.connectionManager2.openConnection();
		
		String strSQL = "select count(*) from employee";
		ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL);
		try {
			if(resultSet.next()){
				int employee_count = resultSet.getInt(1);
				return employee_count;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  0;
		} finally{
			this.connectionManager2.closeConnection(conn);
		}	
		return 0;
	}
	
}
