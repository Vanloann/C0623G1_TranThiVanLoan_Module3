<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/26/2023
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="server-time-servlet" method="get">
    <input type="submit" value="today">
</form>
Today: ${today}
</body>
</html>
