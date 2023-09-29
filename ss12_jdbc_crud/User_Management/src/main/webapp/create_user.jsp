<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/29/2023
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create User</title>
</head>
<body>
<h3>Insert User</h3>
<form action="user-servlet?action=create" method="post">
<table>
    <tr>
        <th>Name</th>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <th>Email</th>
        <td><input type="text" name="email"></td>
    </tr>
    <tr>
        <th>Country</th>
        <td><input type="text" name="country"></td>
    </tr>
</table>
    <button style="margin-top: 20px" type="submit">Insert</button>
</form>
</body>
</html>
