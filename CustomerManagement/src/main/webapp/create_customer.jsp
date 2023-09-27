<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/27/2023
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/customer-servlet?action=create" method="post">
    <label>Input Id      : <input type="number" name="id"></label><br>
    <label>Input Name    : <input type="text" name="name"></label><br>
    <label>Input Email   : <input type="text" name="email"></label><br>
    <label>Input Address : <input type="text" name="address"></label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
