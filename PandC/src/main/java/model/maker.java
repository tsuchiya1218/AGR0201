package model;

import java.io.Serializable;

public class maker implements Serializable {
	private String makerID;
	private String makerName;
	private String makerImg;
	
	public maker() {
		super();
	}
	
	public maker(String makerName, String makerImg) {
		this.setMakerName(makerName);
		this.setMakerImg(makerImg);
	}
	
	public String getMakerID() {
		return makerID;
	}

	public void setMakerID(String makerID) {
		this.makerID = makerID;
	}

	public String getMakerName() {
		return makerName;
	}

	public void setMakerName(String makerName) {
		this.makerName = makerName;
	}

	public String getMakerImg() {
		return makerImg;
	}

	public void setMakerImg(String makerImg) {
		this.makerImg = makerImg;
	}

}
