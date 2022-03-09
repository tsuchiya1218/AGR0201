package model;

import java.io.Serializable;

public class Product implements Serializable {
    private static final long serialVersionUID = 1L;
    
	private char goodsName;
    private int goodsPrice;
    private int goodsValue;
    private  String category ;
    private String maker;
    private char goodsAbout  ;
    private String goodsPhoto;
    private int goodsID;
    private int categoryID;
    private int goodsStartDate;
    private int goodsEndDate;
	public char getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(char goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public int getGoodsValue() {
		return goodsValue;
	}
	public void setGoodsValue(int goodsValue) {
		this.goodsValue = goodsValue;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public char getGoodsAbout() {
		return goodsAbout;
	}
	public void setGoodsAbout(char goodsAbout) {
		this.goodsAbout = goodsAbout;
	}
	public String getGoodsPhoto() {
		return goodsPhoto;
	}
	public void setGoodsPhoto(String goodsPhoto) {
		this.goodsPhoto = goodsPhoto;
	}
	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public int getGoodsStartDate() {
		return goodsStartDate;
	}
	public void setGoodsStartDate(int goodsStartDate) {
		this.goodsStartDate = goodsStartDate;
	}
	public int getGoodsEndDate() {
		return goodsEndDate;
	}
	public void setGoodsEndDate(int goodsEndDate) {
		this.goodsEndDate = goodsEndDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Product(char goodsName, int goodsPrice, int goodsValue, String category, String maker, char goodsAbout,
			String goodsPhoto, int goodsID, int categoryID, int goodsStartDate, int goodsEndDate) {
		super();
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsValue = goodsValue;
		this.category = category;
		this.maker = maker;
		this.goodsAbout = goodsAbout;
		this.goodsPhoto = goodsPhoto;
		this.goodsID = goodsID;
		this.categoryID = categoryID;
		this.goodsStartDate = goodsStartDate;
		this.goodsEndDate = goodsEndDate;
	}
}
    
    
  