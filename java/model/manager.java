package model;

public class manager {
	private String managerID;
	
	private String managerMail;
	private String managerPassword;
	private String managerRegisterDate;
	private String managerTel;

	public manager() {
		super();
	}
	public manager(String managerID, String managerMail, String managerPassword, String managerRegisterDate,
			String managerTel) {
		super();
		this.managerID = managerID;
		this.managerMail = managerMail;
		this.managerPassword = managerPassword;
		this.managerRegisterDate = managerRegisterDate;
		this.managerTel = managerTel;
	}
	public String getManagerID() {
		return managerID;
	}
	public void setManagerID(String managerID) {
		this.managerID = managerID;
	}
	public String getManagerMail() {
		return managerMail;
	}
	public void setManagerMail(String managerMail) {
		this.managerMail = managerMail;
	}
	public String getManagerPassword() {
		return managerPassword;
	}
	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}
	public String getManagerRegisterDate() {
		return managerRegisterDate;
	}
	public void setManagerRegisterDate(String managerRegisterDate) {
		this.managerRegisterDate = managerRegisterDate;
	}
	public String getManagerTel() {
		return managerTel;
	}
	public void setManagerTel(String managerTel) {
		this.managerTel = managerTel;
	}
}
