<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/29/2023
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List of user</title>
</head>
<body>
<h2>User List</h2>
<p><a href="user-servlet?action=create">Insert User</a></p>
<table border="1" style="border-collapse: collapse; text-align: center; width: 800px">
  <tr>
    <th>No.</th>
    <th>Name</th>
    <th>Email</th>
    <th>Country</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${userList}" var="user" varStatus="loop">
    <tr>
      <td>${loop.count}</td>
      <td><a href="user-servlet?action=view&id=${user.id}">${user.getName()}</a></td>
      <td>${user.getEmail()}</td>
      <td>${user.getCountry()}</td>
      <td><a href="user-servlet?action=edit&id=${user.id}">edit</a></td>
      <td><a href="user-servlet?action=delete&id=${user.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
<form action="/user-servlet?action=search" method="post">
  <input type="text" name="country" placeholder="Search by country">
  <button type="submit">Search</button>
</form>
</body>
</html>
