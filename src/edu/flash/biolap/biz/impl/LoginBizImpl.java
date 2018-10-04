package edu.flash.biolap.biz.impl;


import edu.flash.biolap.biz.ILoginBiz;
import edu.flash.biolap.dao.IUsersDao;
import edu.flash.biolap.dao.impl.UsersDaoImpl;
import edu.flash.biolap.po.Users;

public class LoginBizImpl implements ILoginBiz {
private IUsersDao usersDao;
	
	public LoginBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.usersDao = new UsersDaoImpl();
	}

	@Override
	public Users isLogin(String nickname, String password) {
		// TODO Auto-generated method stub
		return this.usersDao.selectByObject(nickname, password);
	}

}
