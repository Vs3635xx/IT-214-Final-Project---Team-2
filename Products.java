package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myservlet")
public class Products extends HttpServlet {

	private static ArrayList<Products> productArray = new ArrayList<Products>(Arrays.asList(
			new Products("Programmer's Dozen", 2.99,
					"https://s3-eu-west-1.amazonaws.com/froala-eu/temp_files%2F1560635572238-1560635572238.png", 4),
			new Products("Spaghetti Code", 4.99, "https://sourcemaking.com/files/sm/images/spagett.jpg", 13),
			new Products("Raspberry Pi", 13.99,
					"https://driscolls.imgix.net/-/media/assets/recipes/strawberry-raspberry-pie-recipe.ashx?q=50&fit=crop&crop=entropy&w=1200&h=900&ixlib=imgixjs-3.1.0",
					5),
			new Products("Tomato Ctrl + V", 1.99,
					"https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco/https://storage.googleapis.com/gen-atmedia/3/2014/08/70daf61a842afd64df28ac1045092cf4df3b892e.jpeg",
					17),
			new Products("Partial Apple", 0.99, "http://editorial.designtaxi.com/news-appleapples1910/1.jpeg", 3),
			new Products("Kernels", 3.99,
					"https://sc01.alicdn.com/kf/HTB1on7BRFXXXXbJXFXXq6xXFXXXy/canned-sweet-corn-kernel-with-easy-open.jpg_350x350.jpg",
					10),
			new Products("Cookies", 4.99,
					"https://sociorocketnewsen.files.wordpress.com/2016/09/browser-cookies-5.jpg?w=640&h=666", 5),
			new Products("Mac and Cheese", 6.99,
					"http://phone-skinz.com/images/800/decal-skin-sticker-cheesephone-swiss-cheese-pattern-macbook-white-18-465-2.jpg",
					2),
			new Products("Vitamin C++", 10.99, "https://i.ebayimg.com/images/g/BnIAAOSw4aZbBgfx/s-l300.jpg", 14),
			new Products("Pancake Stack, Overflowed with Syrup", 8.99,
					"https://www.jessicagavin.com/wp-content/uploads/2019/02/homemade-pancakes-7-600x900.jpg", 12)));

	private String produceName;
	private double price;
	private String picture;
	private int quantity;

	public Products(String produceName, double price, String picture, int quantity) {

		this.produceName = produceName;
		this.price = price;
		this.picture = picture;
		this.quantity = quantity;
	}

	public Products() {
		// TODO Auto-generated constructor stub
	}

	public static Comparator<Products> Name = new Comparator<Products>() {
		public int compare(Products p1, Products p2) {
			return p1.getProduceName().toUpperCase().compareTo(p2.getProduceName().toUpperCase());
		}
	};

	public static Comparator<Products> Price = new Comparator<Products>() {
		public int compare(Products p1, Products p2) {
			return (int) (p1.getPrice() - p2.getPrice());
		}
	};

	public static Comparator<Products> Quantity = new Comparator<Products>() {
		public int compare(Products p1, Products p2) {
			return p1.getQuantity() - p2.getQuantity();
		}
	};

	public static ArrayList<Products> getPArray() {
		return productArray;
	}

	public String getProduceName() {
		return produceName;
	}

	public double getPrice() {
		return price;
	}

	public String getPicture() {
		return picture;
	}

	public int getQuantity() {
		return quantity;
	}

	private void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("Name") != null) {
			Collections.sort(productArray, Name);
		} else if (request.getParameter("Price") != null) {
			Collections.sort(productArray, Price);
		} else if (request.getParameter("Quantity") != null) {
			Collections.sort(productArray, Quantity);
		} else {

		}
		request.getRequestDispatcher("products.jsp").forward(request, response);
	}

}
