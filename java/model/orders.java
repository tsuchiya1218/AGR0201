package model;

public class orders {

	private int ordersID;
	private int ordersPayment;
	private String ordersMail;
	private int userID;
	private int deliveryID;
	private String ordersDate;
	private String ordersPaymentType;
	
	private int ordersPaymentSum;
	
	public int getOrdersPaymentSum() {
		return ordersPaymentSum;
	}

	public void setOrdersPaymentSum(int ordersPaymentSum) {
		this.ordersPaymentSum = ordersPaymentSum;
	}

	public orders(int ordersID, int ordersPayment, String ordersMail, int userID, int deliveryID, String ordersDate,
			String ordersPaymentType) {
		super();
		this.ordersID = ordersID;
		this.ordersPayment = ordersPayment;
		this.ordersMail = ordersMail;
		this.userID = userID;
		this.deliveryID = deliveryID;
		this.ordersDate = ordersDate;
		this.ordersPaymentType = ordersPaymentType;
	}
	
	public orders() {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public int getOrdersID() {
		return ordersID;
	}

	public void setOrdersID(int ordersID) {
		this.ordersID = ordersID;
	}

	public int getOrdersPayment() {
		return ordersPayment;
	}

	public void setOrdersPayment(int ordersPayment) {
		this.ordersPayment = ordersPayment;
	}

	public String getOrdersMail() {
		return ordersMail;
	}

	public void setOrdersMail(String ordersMail) {
		this.ordersMail = ordersMail;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getDeliveryID() {
		return deliveryID;
	}

	public void setDeliveryID(int deliveryID) {
		this.deliveryID = deliveryID;
	}

	public String getOrdersDate() {
		return ordersDate;
	}

	public void setOrdersDate(String ordersDate) {
		this.ordersDate = ordersDate;
	}

	public String getOrdersPaymentType() {
		return ordersPaymentType;
	}

	public void setOrdersPaymentType(String ordersPaymentType) {
		this.ordersPaymentType = ordersPaymentType;
	}

}
