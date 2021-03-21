<%@ page import="java.time.LocalDateTime" %>

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
<%--<a href="/webproject-1.0-SNAPSHOT/allproducts">Список всех продуктов</a> | <a href="/webproject-1.0-SNAPSHOT/addproduct">Добавить новый продукт</a>--%>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>