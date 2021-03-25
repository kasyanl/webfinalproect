<%@ page import="java.time.LocalDateTime" %>
<%@ page import="repository.ProductDataBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="/header.jsp"%>
<%@include file="/nav.jsp"%>

<h1>Система учета продуктов</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2>
<% ProductDataBase.createList();%>
<%@include file="/footer.jsp"%>
</body>
</html>
