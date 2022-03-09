package model;


public class good {
	private String goodID;
	private String goodsName;
	private String goodsImg;
	private String goodsAbout;
	private String goodsFeatures;
	private String featureImg;
	private String value;
	private String price;
	
	
	public good() {
		super();
	}
	public good(String goodsName, String goodsImg, String value, String price) {
		super();
		this.goodsName = goodsName;
		this.goodsImg = goodsImg;
		this.value = value;
		this.price = price;
	}
	
	public String getGoodID() {
		return goodID;
	}
	public void setGoodID(String goodID) {
		this.goodID = goodID;
	}
	
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}
	public String getGoodsAbout() {
		return goodsAbout;
	}
	public void setGoodsAbout(String goodsAbout) {
		this.goodsAbout = goodsAbout;
	}
	public String getGoodsFeatures() {
		return goodsFeatures;
	}
	public void setGoodsFeatures(String goodsFeatures) {
		this.goodsFeatures = goodsFeatures;
	}
	public String getFeatureImg() {
		return featureImg;
	}
	public void setFeatureImg(String featureImg) {
		this.featureImg = featureImg;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
}
