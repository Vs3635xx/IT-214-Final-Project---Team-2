<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="web.*, java.util.ArrayList, java.util.Arrays, java.util.Collections"
%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setAttribute("pArray", Products.getPArray());
%>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>
<body bgcolor="#EEDCC2">
	<h1 style="text-align: center;">
		<strong style="font-size: 60px;"><span
			style="font-family: Verdana, Geneva, sans-serif;"
		>//BITS AND BYTES//<br></span></strong><span
			style="font-family: Verdana, Geneva, sans-serif;"
		> <strong style="font-size: 30x;">-A Programmer&#39;s
				Pantry-</strong></span>
	</h1>
	<p>
		<span style="font-family: Verdana, Geneva, sans-serif;"><br></span>
	</p>
	<hr>
	<div style="text-align: center;">
		<span style="font-family: Verdana, Geneva, sans-serif;"> <strong
			style="font-size: <div style=;"
		> &nbsp; <a href="/web/index.jsp">&nbsp;About&nbsp;</a> <!--About Page -->
				<a href="/web/index.jsp">&nbsp;Home Page&nbsp;</a> <!-- Home Page -->
				<a href="/web/products.jsp">&nbsp;Products&nbsp;</a> <!-- Products Page -->
				<a href="/web/index.jsp">&nbsp;Shopping Cart&nbsp;</a> <!-- Shopping Cart Page -->
				&nbsp;
		</strong>
		</span>
	</div>
	<hr>
	<div id="options" align="center">
		<input style="font-family: Verdana, Geneva, sans-serif;" type="text"
			id="food" onkeyup="search()" placeholder="Search for food..."
		>
		<script>
			function search() {
				// Declare variables 
				var input, filter, table, tr, td, i, txtValue;
				input = document.getElementById("food");
				filter = input.value.toUpperCase();
				table = document.getElementById("productTable");
				tr = table.getElementsByTagName("tr");
				// Loop through all table rows, and hide those who don't match the search query
				for (i = 0; i < tr.length; i++) {
					td = tr[i].getElementsByTagName("td")[0];
					if (td) {
						txtValue = td.textContent || td.innerText;
						if (txtValue.toUpperCase().indexOf(filter) > -1) {
							tr[i].style.display = "";
						} else {
							tr[i].style.display = "none";
						}
					}
				}
			}
		</script>
		<script>
			function refreshTable() {
				var table = document.getElementById("productTable");
				table.refresh();
			}
		</script>
		<form action="${pageContext.request.contextPath}/myservlet"
			method="post"
		>
			<input type="submit" name="Name" value="Sort by Name" /> <input
				type="submit" name="Price" value="Sort by Price"
			/> <input type="submit" name="Quantity" value="Sort by Quantity" />
		</form>
	</div>
	<table align="center" border="1"
		style="font-family: Verdana, Geneva, sans-serif;" table
		id="productTable"
	>
		<tr align="center" class="header">
			<th>Name</th>
			<th>Price</th>
			<th>Photo</th>
			<th>Quantity</th>
			<th>Buy</th>
		</tr>
		<tr>
			<td align="center">${pArray[0].getProduceName()}</td>
			<td align="center">${pArray[0].getPrice()}</td>
			<td align="center"><img src=${pArray[0].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[0].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[1].getProduceName()}</td>
			<td align="center">${pArray[1].getPrice()}</td>
			<td align="center"><img src=${pArray[1].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[1].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[2].getProduceName()}</td>
			<td align="center">${pArray[2].getPrice()}</td>
			<td align="center"><img src=${pArray[2].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[2].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[3].getProduceName()}</td>
			<td align="center">${pArray[3].getPrice()}</td>
			<td align="center"><img src=${pArray[3].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[3].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[4].getProduceName()}</td>
			<td align="center">${pArray[4].getPrice()}</td>
			<td align="center"><img src=${pArray[4].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[4].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[5].getProduceName()}</td>
			<td align="center">${pArray[5].getPrice()}</td>
			<td align="center"><img src=${pArray[5].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[5].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[6].getProduceName()}</td>
			<td align="center">${pArray[6].getPrice()}</td>
			<td align="center"><img src=${pArray[6].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[6].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[7].getProduceName()}</td>
			<td align="center">${pArray[7].getPrice()}</td>
			<td align="center"><img src=${pArray[7].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[7].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[8].getProduceName()}</td>
			<td align="center">${pArray[8].getPrice()}</td>
			<td align="center"><img src=${pArray[8].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[8].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
		<tr>
			<td align="center">${pArray[9].getProduceName()}</td>
			<td align="center">${pArray[9].getPrice()}</td>
			<td align="center"><img src=${pArray[9].getPicture() }
				width="120"
			></td>
			<td align="center">${pArray[9].getQuantity()}</td>
			<td align="center"><a
				href="${pageContext.request.contextPath }${product.id }"
			>Buy</a></td>
		</tr>
	</table>
</body>
</html>
