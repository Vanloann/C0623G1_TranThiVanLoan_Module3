<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Discount</title>
</head>
<body>
<form action="discount-servlet" method="post">
    <input type="text" name="description" placeholder="Enter product description: "/> <br>
    <input type="number" name="price" placeholder="Enter product price: "/> <br>
    <input type="number" name="discount" placeholder="Enter discount percent: "/> <br>
    <input type = "submit" id = "submit" value = "Calculate Discount"/> <br>
</form>
</body>
</html>