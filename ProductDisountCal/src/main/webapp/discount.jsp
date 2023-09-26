<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/26/2023
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="discount-servlet" method="post">
    <input type="text" name="description" placeholder="Enter product description: "/>
    <input type="text" name="price" placeholder="Enter product price: "/>
    <input type="text" name="discount" placeholder="Enter discount %: "/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>

Product Description: ${description} <br>
List Price:  ${price} <br>
Discount Percent:   ${discount} <br>
Discount Amount: ${dis_amount} <br>
Discount Price: ${dis_price}
</body>
</html>
