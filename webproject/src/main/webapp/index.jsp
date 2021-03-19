<%@ page import="java.time.LocalDateTime" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center">
<h1>Система учета продуктов</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2>
<a href="/webproject-1.0-SNAPSHOT/allproducts">Список всех продуктов</a> | <a href="/webproject-1.0-SNAPSHOT/addstudent">Добавить новый продукт</a>
</body>
</html>