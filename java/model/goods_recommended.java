package model;

public class goods_recommended {
	

	private int type;
	private String typeName;
	public goods_recommended() {
		super();
	}
	
	public goods_recommended(int type, String typeName) {
		super();
		this.type = type;
		this.typeName = typeName;
	}

	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
}
