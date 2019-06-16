<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="web.Web"
%><!DOCTYPE html>
<html>
<head>
<%
	Web w = new Web();
	int addResult = w.add(200, 300);
	int multResult = w.multiply(200, 300);
	int multResult2 = w.multiply(20, 2);

	//Products p = new Products("Turkey", 1.0, "Turkey_Pic");
%>
<meta charset="ISO-8859-1">
<title>Bits and Bytes</title>
</head>
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
		<span style="font-family: Verdana, Geneva, sans-serif;"><strong
			style="font-size: <div style=;"
		> &nbsp; <a href="/web/index.jsp">&nbsp;About&nbsp;</a> <!--About Page -->
				<a href="/web/index.jsp">&nbsp;Home Page&nbsp;</a> <!-- Home Page -->
				<a href="/web/products.jsp">&nbsp;Products&nbsp;</a> <!-- Products Page -->
				<a href="/web/index.jsp">&nbsp;Shopping Cart&nbsp;</a> <!-- Shopping Cart Page -->
				&nbsp;
		</strong></span>
	</div>
	<hr>
	<p>
		<span style="font-family: Verdana, Geneva, sans-serif;">&nbsp;</span>
	</p>
	<p>&nbsp;</p>
	<table>
		<tr>
			<td><a href="/web/index.jsp"> </a></td>
			<td><a href="/web/index.jsp">-- Home Page --</a></td>
			<td><a href="/web/test.jsp">-- Products --</a></td>
			<td><a href="/Com/index.jsp">-- Shopping Cart --</a></td>
		</tr>
	</table>
	<table>
		<tr>
			<td>This is my Shopping Cart Calculator</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>The addition result is: <%=addResult%>
			</td>
		</tr>
		<tr>
			<td>The multiply result is: <%=multResult%>
			</td>
		</tr>
		<tr>
			<td>The multiply result is: <%=multResult2%>
			</td>
		</tr>
	</table>
</body>
</html>
