/**
 * 
 */
package model;

import java.io.Serializable;

/**
 * @author tanea
 *
 */
public class Cart implements Serializable {


	private static final long serialVersionUID = 1L;
	
	private int SKU;
	private String ItemName;
	private double Price;
	private int Qty;

	/**
	 * default constructor
	 */
	public Cart() {
		this.SKU = 0;
		this.ItemName = "No Product Type";
		this.Price = 0.00;
		this.Qty = 0;
	}

	public Cart(int SKU, String ItemName, double Price, int Qty) {
		this.SKU = SKU;
		this.ItemName = ItemName;
		this.Price = Price;
		this.Qty = Qty;
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
	public void setSKU(int sku) {
		SKU = sku;
	}

	/**
	 * @return the productType
	 */
	public String getItemName() {
		return ItemName;
	}

	/**
	 * @param productType the productType to set
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
	 * @return the quantity
	 */
	public int getQty() {
		return Qty;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQty(int qty) {
		Qty = qty;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Cart [SKU=" + SKU + ", ItemName=" + ItemName + ", Price=" + Price + ", Qty=" + Qty + "]";
	}
	

	
	
}
