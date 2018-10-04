package edu.flash.biolap.dao.impl;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;

import edu.flash.biolap.dao.IUsersDao;
import edu.flash.biolap.db.ConnectionManager;
import edu.flash.biolap.db.DBUtils;
import edu.flash.biolap.db.TransactionManager;
import edu.flash.biolap.po.Users;

public class UsersDaoImpl implements IUsersDao {
	
	private ConnectionManager connectionManager;
	private DBUtils dbUtils;
	

	public UsersDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}




	@Override
	public int insert(Users user) {
		// TODO Auto-generated method stub

		String userpho = user.getUserpho();
		int userstatus = user.getUserstatus();
		String nickname = user.getNickname();
		String password = user.getPassword();
		String email= user.getEmail();
		String role= user.getRole();
		
		Connection conn = this.connectionManager.openConnection();
		TransactionManager.conn = conn;
		TransactionManager.beginTransaction();
		
		String strSQL = "insert into users values(null,?, ?, ?, ?, ?,?)";
		Object[] params = new Object[]{userpho, userstatus, nickname, password, email,role};
		
		int affectedRwos = this.dbUtils.execOthers(conn, strSQL, params);
		
		if(affectedRwos > 0){
			TransactionManager.commit();
		}else{
			TransactionManager.rollback();
		}		
		return affectedRwos;
		
	}




	@Override
	public Users selectByObject(String nickname, String password) {
		// TODO Auto-generated method stub
        Connection conn = this.connectionManager.openConnection();
		
		String strSQL = "select * from users where nickname=? and password=?";
		Object[] params = new Object[]{nickname, password};
		
		ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL, params);
		try {
			if(resultSet.next()){
				Users user = new Users();
				user.setUserid(resultSet.getInt(1));
				user.setUserpho(resultSet.getString(2));
				user.setUserstatus(resultSet.getInt(3));
				user.setNickname(resultSet.getString(4));
				user.setPassword(resultSet.getString(5));
				user.setEmail(resultSet.getString(6));
				user.setRole(resultSet.getString(7));
				
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  null;
		} finally{
			this.connectionManager.closeConnection(conn);
		}	
		return null;
	}

}
