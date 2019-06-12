package web;

public class FoodItems {
	private Products produce;
	private int quantity;
	
	public FoodItems(Products produce, int quantity) {
		this.produce = produce;
		this.quantity = quantity;
	}
	
	public Products getFood()
	{
		return produce;
		
	}
	
	public int getQuantity() {
		return quantity;
	}
	}
}
