package model;

public class delivery {
	
	private int deliveryID;
	private String deliveryType;
	private int Material;

	public delivery(int deliveryID, String deliveryType, int material) {
		super();
		this.deliveryID = deliveryID;
		this.deliveryType = deliveryType;
		Material = material;
	}
	
	public int getDeliveryID() {
		return deliveryID;
	}

	public void setDeliveryID(int deliveryID) {
		this.deliveryID = deliveryID;
	}

	public String getDeliveryType() {
		return deliveryType;
	}

	public void setDeliveryType(String deliveryType) {
		this.deliveryType = deliveryType;
	}

	public int getMaterial() {
		return Material;
	}

	public void setMaterial(int material) {
		Material = material;
	}

}
