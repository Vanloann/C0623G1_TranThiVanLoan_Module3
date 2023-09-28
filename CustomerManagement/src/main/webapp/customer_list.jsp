<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/27/2023
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of Customer</h1>
<p><a href="customer-servlet?action=create">Add Customer</a></p>
<table border="1px" style="border-collapse: collapse; width: 500px; text-align: center">
    <thead>
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${customerList}" var="customer" varStatus="loop">
            <tr>
                <td>${loop.count}</td>
                <td><a href="customer-servlet?action=view&id=${customer.id}">${customer.name}</a></td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td><a href="customer-servlet?action=edit&id=${customer.id}">Edit</a></td>
                <td><a href="customer-servlet?action=remove&id=${customer.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<br>

</body>
</html>
