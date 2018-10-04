package edu.flash.biolap.biz;

import edu.flash.biolap.po.Users;



public interface ILoginBiz {
	
	public abstract Users isLogin(final String nickname, final String password);

}
