package model;

import java.io.Serializable;

public class user implements Serializable{
	private int userID;
	private String userName;
	private String password;
	private String userMail;
	private String registerDate;
	private int postNumber;
	private String address;
	private String birth;
	private String tel;
	
	public user() {
		super();
	}
	
	public user(int userID, String userName, String password, String userMail, String registerDate, int postNumber,
			String address,String birth, String tel) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.password = password;
		this.userMail = userMail;
		this.registerDate = registerDate;
		this.postNumber = postNumber;
		this.address = address;
		this.tel = tel;
		this.birth = birth;
	}
	
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	
	public int getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(int postNumber) {
		this.postNumber = postNumber;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
}
