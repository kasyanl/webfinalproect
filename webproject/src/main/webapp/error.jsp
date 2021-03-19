<%--
  Created by IntelliJ IDEA.
  User: jrr
  Date: 16.03.21
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Some error...</title>
</head>
<body>
<h1><%=request.getAttribute("error")%></h1>
<a href="/webproject-1.0-SNAPSHOT">Home</a>
</body>
</html>