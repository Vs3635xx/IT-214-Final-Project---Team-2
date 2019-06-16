<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.Products"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
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
			href="/web/ShoppingCart.jsp"
		>Shopping Cart</a></strong>
	</p>
	<hr />
	<p>&nbsp;</p>

	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Remove</th>
			<th>Product Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="total" value="0"></c:set>
		<c:forEach var="Item" items="${pArray.cart }">
			<c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.id }"
					onclick="return confirm('Are you sure?')">Remove</a>
				</td>
				<tr>
			<td>${Item.getProduceName()}</td>
			<td>${Item.getPrice()}</td>
			<td><img src=${Item.getPicture() } width="120"></td>
			<td>${Item.getQuantity()}</td>
		</tr>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Total</td>
			<td>${total }</td>
		</tr>
	</table>
	<br>
	<a href="/web/products.jsp">Continue Shopping</a>

</body>
</html>