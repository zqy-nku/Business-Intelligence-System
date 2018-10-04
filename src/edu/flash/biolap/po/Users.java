package edu.flash.biolap.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Users implements Serializable {
 private int userid;
 private String userpho;
 private int userstatus;
 private String nickname;
 private String password;
 private String email;
 private String role;
 
public Users() {
	super();
	// TODO Auto-generated constructor stub
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getUserpho() {
	return userpho;
}
public void setUserpho(String userpho) {
	this.userpho = userpho;
}
public int getUserstatus() {
	return userstatus;
}
public void setUserstatus(int userstatus) {
	this.userstatus = userstatus;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}


public Users(int userid, String userpho, int userstatus, String nickname,
		String password, String email,String role) {
	super();
	this.userid = userid;
	this.userpho = userpho;
	this.userstatus = userstatus;
	this.nickname = nickname;
	this.password = password;
	this.email = email;
	this.role = role;
}
@Override
public String toString() {
	return "Users [userid=" + userid + ", userpho=" + userpho + ", userstatus="
			+ userstatus + ", nickname=" + nickname + ", password=" + password
			+ ", email=" + email + ", role="+ role +"]";
}
public Object getAccount() {
	// TODO Auto-generated method stub
	return null;
}



 
}