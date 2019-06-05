package web;


public class Products {

	private static String produceName;
	private static Float price;
	private static String picture;
	
	public Products(String produceName, Float price, String picture) {
		this.produceName = produceName;
		this.price = price;
		this.picture = picture;
		
	}
	
	public String getProduce(){
		return produceName;
	}
	public Float getPrice() {
		return price;
	}
	public String getPicture(){
		return picture;
	}



}
