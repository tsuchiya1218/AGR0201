package model;

public class goods {


	private  int goodsID;
	private String goodsName;
	private int categoryID;
	private int markerID;
	private String goodsFeatures;
	private String goodsStartDate;
	private String goodsEndDate;
	private int goodsPrice;
	private int goodsValue;
	private String goodsAbout;
	private String goodsImg;
	private String featurImg;
	private int stock;
	private int typeID;
	private String typeName;
	

	public goods(int goodsID, String goodsName, int categoryID, int markerID, String goodsFeatures,
			String goodsStartDate, String goodsEndDate, int goodsPrice, int goodsValue, String goodsAbout,
			String goodsImg, String featurImg, int stock, int typeID, String typeName) {
		super();
		this.goodsID = goodsID;
		this.goodsName = goodsName;
		this.categoryID = categoryID;
		this.markerID = markerID;
		this.goodsFeatures = goodsFeatures;
		this.goodsStartDate = goodsStartDate;
		this.goodsEndDate = goodsEndDate;
		this.goodsPrice = goodsPrice;
		this.goodsValue = goodsValue;
		this.goodsAbout = goodsAbout;
		this.goodsImg = goodsImg;
		this.featurImg = featurImg;
		this.stock = stock;
		this.typeID = typeID;
		this.typeName = typeName;
	}


	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public goods() {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public int getMarkerID() {
		return markerID;
	}
	public void setMarkerID(int markerID) {
		this.markerID = markerID;
	}
	public String getGoodsFeatures() {
		return goodsFeatures;
	}
	public void setGoodsFeatures(String goodsFeatures) {
		this.goodsFeatures = goodsFeatures;
	}
	public String getGoodsStartDate() {
		return goodsStartDate;
	}
	public void setGoodsStartDate(String goodsStartDate) {
		this.goodsStartDate = goodsStartDate;
	}
	public String getGoodsEndDate() {
		return goodsEndDate;
	}
	public void setGoodsEndDate(String goodsEndDate) {
		this.goodsEndDate = goodsEndDate;
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
	public String getGoodsAbout() {
		return goodsAbout;
	}
	public void setGoodsAbout(String goodsAbout) {
		this.goodsAbout = goodsAbout;
	}
	public String getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}
	public String getFeaturImg() {
		return featurImg;
	}
	public void setFeaturImg(String featurImg) {
		this.featurImg = featurImg;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getTypeID() {
		return typeID;
	}

	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}

}
