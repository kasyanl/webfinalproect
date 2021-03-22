<%@ page import="java.time.LocalDateTime" %>
<%@ page import="repository.ProductDataBase" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center">
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<h1>Система учета продуктов</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2>
<% ProductDataBase.createList();%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>