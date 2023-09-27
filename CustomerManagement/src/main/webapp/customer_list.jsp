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
<table border="1px">
    <thead>
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${customerList}" var="customer" varStatus="loop">
            <tr>
                <td>${loop.count}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<br>
<a href="/customer-servlet?action=create">Add Customer</a>
</body>
</html>
