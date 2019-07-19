/**
 * 
 */
package model;

import java.io.Serializable;

/**
 * @author tanea
 *
 */
public class Catalog implements Serializable {


	private static final long serialVersionUID = 1L;
	
	private String SKU;
	private String ItemName;
	private String ItemDesc;
	private double Price;
	private int Inventory;

	/**
	 * default constructor
	 */
	public Catalog() {
		this.SKU = "SKU#";
		this.ItemName = "No Product Type";
		this.ItemDesc = "No Product Type";
		this.Price = 0.00;
		this.Inventory = 0;
	}

	public Catalog(String SKU, String ItemName, String ItemDesc, double Price, int Inventory) {
		this.SKU = SKU;
		this.ItemName = ItemName;
		this.ItemDesc = ItemDesc;
		this.Price = Price;
		this.Inventory = Inventory;
	}
	

	/**
	 * @return the sKU
	 */
	public String getSKU() {
		return SKU;
	}

	/**
	 * @param sKU the sKU to set
	 */
	public void setSKU(String sku) {
		SKU = sku;
	}

	/**
	 * @return the productType
	 */
	public String getItemName() {
		return ItemName;
	}


	public void setItemName(String itemName) {
		ItemName = itemName;
	}

	public String getItemDesc() {
		return ItemName;
	}


	public void setItemDesc(String itemDesc) {
		ItemName = itemDesc;
	}

	public double getPrice() {
		return Price;
	}


	public void setPrice(double price) {
		Price = price;
	}


	public int getInventory() {
		return Inventory;
	}


	public void setInventory(int inventory) {
		Inventory = inventory;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Cart [SKU=" + SKU + ", ItemName=" + ItemName + ", ItemItemDesc=" + ItemDesc + ",Price=" + Price + ", Inventory=" + Inventory + "]";
	}
	

	
	
}
