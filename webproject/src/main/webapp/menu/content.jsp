<%@ page import="java.time.LocalDateTime" %>
<%@ page import="repository.ProductDataBase" %><%--
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
<jsp:include page="/header.jsp"></jsp:include>
<jsp:include page="/nav.jsp"></jsp:include>
<h1>Система учета продуктов</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2>
<% ProductDataBase.createList();%>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
