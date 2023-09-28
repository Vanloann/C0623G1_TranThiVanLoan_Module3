<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/28/2023
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h3>Edit Customer</h3>
<form action="customer-servlet?action=edit" method="post">
    <table border="1px" style="border-collapse: collapse">
        <%--        <tr>--%>
        <%--            <th>ID</th>--%>
        <%--            <td><input type="number" name="id" value="${requestScope["customer"].get}"></td>--%>
        <%--        </tr>--%>
            <input type="hidden" name="id" value="${customer.id}">
            <tr>
                <th>Name</th>
                <td><input type="text" name="name" value="${customer.getName()}"></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><input type="text" name="email" value="${customer.getEmail()}"></td>
            </tr>
            <tr>
                <th>Address</th>
                <td><input type="text" name="address" value="${customer.getAddress()}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Edit</button>
                </td>
            </tr>

    </table>
</form>
</body>
</html>
