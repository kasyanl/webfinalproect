<%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 19.03.2021
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Operation done successfully.</title>
</head>
<body>
<h1><%= request.getAttribute("message") %></h1>
<a href="/webproject-1.0-SNAPSHOT">Home</a>
</body>
</html>