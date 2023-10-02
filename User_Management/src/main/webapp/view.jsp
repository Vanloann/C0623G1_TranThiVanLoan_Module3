<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/29/2023
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display User Information</title>
</head>
<body>
<form action="customer-servlet?action=view" method="get">
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <tr>
            <input type="hidden" name="id" value="${user.getId()}">
        </tr>
        <tr>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
        </tr>
    </table>
</form>
<a href="user-servlet">Back to User List</a>
</body>
</html>
