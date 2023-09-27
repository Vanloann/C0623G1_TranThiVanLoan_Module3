<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/27/2023
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<a href="customer-servlet">Danh sách khách hàng</a>--%>
<h1>Danh sách khách hàng</h1>
<table  border="1px solid black" style="border-collapse: collapse; text-align: center; width: 100%;">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.birthday}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td><img src="${customer.image}" width="150px" height="100px"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
