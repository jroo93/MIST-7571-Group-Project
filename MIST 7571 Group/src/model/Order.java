package model;

import java.io.Serializable;

public class Order implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int OrderNum;
	private int SKU;
	private String ItemName; 
	private double Price;
	private int Qty;
	private double ItemTotal; 
	private double OrderTotal; 
	
	public Order() {
		this.OrderNum = 0;
		this.SKU = 0;
		this.ItemName = ""; 
		this.Price = 0.00;
		this.Qty = 0;
		this.ItemTotal = 0.00; 
		this.OrderTotal = 0.00; 
	}
	
	public Order(int OrderNum, int SKU, String ItemName, double Price, int Qty, double ItemTotal, double OrderTotal) {
		this.OrderNum = OrderNum;
		this.SKU = SKU;
		this.ItemName = ItemName; 
		this.Price = Price;
		this.Qty = Qty;
		this.ItemTotal = ItemTotal; 
		this.OrderTotal = OrderTotal;
	}

	/**
	 * @return the orderNum
	 */
	public int getOrderNum() {
		return OrderNum;
	}

	/**
	 * @param orderNum the orderNum to set
	 */
	public void setOrderNum(int orderNum) {
		OrderNum = orderNum;
	}

	/**
	 * @return the sKU
	 */
	public int getSKU() {
		return SKU;
	}

	/**
	 * @param sKU the sKU to set
	 */
	public void setSKU(int sKU) {
		SKU = sKU;
	}

	/**
	 * @return the itemName
	 */
	public String getItemName() {
		return ItemName;
	}

	/**
	 * @param itemName the itemName to set
	 */
	public void setItemName(String itemName) {
		ItemName = itemName;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return Price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		Price = price;
	}

	/**
	 * @return the qty
	 */
	public int getQty() {
		return Qty;
	}

	/**
	 * @param qty the qty to set
	 */
	public void setQty(int qty) {
		Qty = qty;
	}

	/**
	 * @return the itemTotal
	 */
	public double getItemTotal() {
		return ItemTotal;
	}

	/**
	 * @param itemTotal the itemTotal to set
	 */
	public void setItemTotal(double itemTotal) {
		ItemTotal = itemTotal;
	}

	/**
	 * @return the orderTotal
	 */
	public double getOrderTotal() {
		return OrderTotal;
	}

	/**
	 * @param orderTotal the orderTotal to set
	 */
	public void setOrderTotal(double orderTotal) {
		OrderTotal = orderTotal;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Order [OrderNum=" + OrderNum + ", SKU=" + SKU + ", ItemName=" + ItemName + ", Price=" + Price + ", Qty="
				+ Qty + ", ItemTotal=" + ItemTotal + ", OrderTotal=" + OrderTotal + "]";
	}
	
	
}
