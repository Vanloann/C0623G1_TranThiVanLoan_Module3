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
<h3>Add Customer</h3>
<form action="customer-servlet?action=create" method="post">
    <table>
        <tr>
            <th>Input ID</th>
            <td><input type="number" name="id"></td>
        </tr>
        <tr>
            <th>Input Name</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>Input Email</th>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <th>Input Address</th>
            <td><input type="text" name="address"></td>
        </tr>
        <tr colspan="2">
            <td><button type="submit">Create</button></td>
        </tr>
    </table>
</form>
</body>
</html>
