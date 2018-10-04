package edu.flash.biolap.biz.impl;

import edu.flash.biolap.biz.ISignupBiz;
import edu.flash.biolap.dao.IUsersDao;
import edu.flash.biolap.dao.impl.UsersDaoImpl;
import edu.flash.biolap.po.Users;

public class SignupBizImpl implements ISignupBiz {

    private IUsersDao usersDao;
    
    
	public SignupBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.usersDao =new UsersDaoImpl();
	}


	@Override
	public boolean signup(Users user) {
		// TODO Auto-generated method stub
		return this.usersDao.insert(user)>0?true:false;
	}

}
