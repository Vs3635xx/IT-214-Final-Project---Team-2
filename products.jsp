<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="web.Products"
%>

<!DOCTYPE html>
<html>
<head>
<%
	Products p = new Products("Programmer's Dozen", 3.25,
			"https://s3-eu-west-1.amazonaws.com/froala-eu/temp_files%2F1560635572238-1560635572238.png", 4);

	Products[] productArray = new Products[]{new Products("Programmer's Dozen", 2.99,
			"https://s3-eu-west-1.amazonaws.com/froala-eu/temp_files%2F1560635572238-1560635572238.png", 4),
			new Products("Spaghetti Code", 4.99, "https://sourcemaking.com/files/sm/images/spagett.jpg", 13),
			new Products("Raspberry Pi", 13.99,
					"https://driscolls.imgix.net/-/media/assets/recipes/strawberry-raspberry-pie-recipe.ashx?q=50&fit=crop&crop=entropy&w=1200&h=900&ixlib=imgixjs-3.1.0",
					5),
			new Products("Tomato Ctrl + V", 1.99,
					"https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco/https://storage.googleapis.com/gen-atmedia/3/2014/08/70daf61a842afd64df28ac1045092cf4df3b892e.jpeg",
					17),
			new Products("Partial Apple", 0.99, "http://editorial.designtaxi.com/news-appleapples1910/1.jpeg",
					3),
			new Products("Kernels", 3.99,
					"https://sc01.alicdn.com/kf/HTB1on7BRFXXXXbJXFXXq6xXFXXXy/canned-sweet-corn-kernel-with-easy-open.jpg_350x350.jpg",
					10),
			new Products("Cookies", 4.99,
					"https://sociorocketnewsen.files.wordpress.com/2016/09/browser-cookies-5.jpg?w=640&h=666",
					5),
			new Products("Mac and Cheese", 6.99,
					"http://phone-skinz.com/images/800/decal-skin-sticker-cheesephone-swiss-cheese-pattern-macbook-white-18-465-2.jpg",
					2),
			new Products("Vitamin C++", 10.99, "https://i.ebayimg.com/images/g/BnIAAOSw4aZbBgfx/s-l300.jpg",
					14),
			new Products("Pancake Stack, Overflowed with Syrup", 8.99,
					"https://www.jessicagavin.com/wp-content/uploads/2019/02/homemade-pancakes-7-600x900.jpg",
					12)};
	request.setAttribute("pArray", productArray);
%>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body bgcolor="#EEDCC2">
	<h1 style="text-align: center;">
		<strong style="font-size: 60px;">//BITS AND BYTES//<br /></strong> <strong
			style="font-size: 30x;"
		>-A Programmer's Pantry-</strong>
	</h1>
	<hr />
	<p style="text-align: center;">
		&nbsp;<strong style="font-size: &lt;div style=;"><a
			href="/web/index.jsp"
		>Home Page</a> <a href="/web/products.jsp">Products</a> <a
			href="/web/index.jsp"
		>Shopping Cart</a></strong>
	</p>
	<hr />
	<p>&nbsp;</p>


	<table align = "center" border="1">
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Photo</th>
			<th>Quantity</th>
			<th>Buy</th>
		</tr>
		<tr>
			<td align = "center">${pArray[0].getProduceName()}</td>
			<td align = "center">${pArray[0].getPrice()}</td>
			<td align = "center"><img src=${pArray[0].getPicture() } width="120"></td>
			<td align = "center">${pArray[0].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[1].getProduceName()}</td>
			<td align = "center">${pArray[1].getPrice()}</td>
			<td align = "center"><img src=${pArray[1].getPicture() } width="120"></td>
			<td align = "center">${pArray[1].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[2].getProduceName()}</td>
			<td align = "center">${pArray[2].getPrice()}</td>
			<td align = "center"><img src=${pArray[2].getPicture() } width="120"></td>
			<td align = "center">${pArray[2].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[3].getProduceName()}</td>
			<td align = "center">${pArray[3].getPrice()}</td>
			<td align = "center"><img src=${pArray[3].getPicture() } width="120"></td>
			<td align = "center">${pArray[3].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[4].getProduceName()}</td>
			<td align = "center">${pArray[4].getPrice()}</td>
			<td align = "center"><img src=${pArray[4].getPicture() } width="120"></td>
			<td align = "center">${pArray[4].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[5].getProduceName()}</td>
			<td align = "center">${pArray[5].getPrice()}</td>
			<td align = "center"><img src=${pArray[5].getPicture() } width="120"></td>
			<td align = "center">${pArray[5].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[6].getProduceName()}</td>
			<td align = "center">${pArray[6].getPrice()}</td>
			<td align = "center"><img src=${pArray[6].getPicture() } width="120"></td>
			<td align = "center">${pArray[6].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[7].getProduceName()}</td>
			<td align = "center">${pArray[7].getPrice()}</td>
			<td align = "center"><img src=${pArray[7].getPicture() } width="120"></td>
			<td align = "center">${pArray[7].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[8].getProduceName()}</td>
			<td align = "center">${pArray[8].getPrice()}</td>
			<td align = "center"><img src=${pArray[8].getPicture() } width="120"></td>
			<td align = "center">${pArray[8].getQuantity()}</td>
		</tr>
		<tr>
			<td align = "center">${pArray[9].getProduceName()}</td>
			<td align = "center">${pArray[9].getPrice()}</td>
			<td align = "center"><img src=${pArray[9].getPicture() } width="120"></td>
			<td align = "center">${pArray[9].getQuantity()}</td>
		</tr>
		
	</table>
</body>
</html>
