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
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname"></i>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email"></i>
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address"></i>
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city"></i>

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state"></i> 
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip"></i> 
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname"></i> 
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber"></i> 
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth"></i> 
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear"></i> 
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv"></i> 
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Submit Payment" class="btn">
      </form>
    </div>
  </div>
</body>
</html>
