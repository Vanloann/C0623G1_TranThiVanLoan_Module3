<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/28/2023
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Customer</title>
</head>
<body>
<h3>Delete Customer</h3>
<form action="customer-servlet?action=remove" method="post">
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        <tr>
            <input type="hidden" name="id" value="${customer.id}">
            <td>${customer.getName()}</td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
        </tr>
    </table>
    <br>
    <button type="submit">Delete</button>
</form>

</body>
</html>
