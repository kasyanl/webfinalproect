<%@ page import="java.time.LocalDateTime" %>
<%@ page import="kasyan.repository.ProductDataBase" %><%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 23.03.2021
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center">
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<h1>Система учета продуктов</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2
<%@include file="footer.jsp"%>
</body>
</html>
