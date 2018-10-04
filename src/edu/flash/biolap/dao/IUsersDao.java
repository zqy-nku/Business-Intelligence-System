package edu.flash.biolap.dao;

import edu.flash.biolap.po.Users;

public interface IUsersDao {
	
	public abstract int insert(final Users user);
	public abstract Users selectByObject(final String nickname, final String password);

}
