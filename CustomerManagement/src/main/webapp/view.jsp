<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/28/2023
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer View</title>
</head>
<body>
<form action="customer-servlet?action=view" method="get">
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        <tr>
            <input type="hidden" name="id" value="${customer.id}">
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
        </tr>
    </table>
</form>
<a href="customer-servlet">Back to Customer List</a>
</body>
</html>
