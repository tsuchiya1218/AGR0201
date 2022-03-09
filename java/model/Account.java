package model;

import java.io.Serializable;

public class Account implements Serializable {
    private static final long serialVersionUID = 1L;

    private String loginId;
    private String pass;
   
    public Account(String loginId, String pass) {
		super();
		this.loginId = loginId;
		this.pass = pass;
	}
	public String getLoginId() {
        return loginId;
    }
    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    
  
}
