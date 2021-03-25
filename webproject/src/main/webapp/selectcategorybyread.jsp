<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="img/backgroung.png">
<%@include file="header.jsp"%>
<h1>Выберите категориию:</h1>
<div face="arial" size="+1">
    <li><a href="${pageContext.request.contextPath}/finecategory/finefruits" target="content">FRUITS</a>
    <li><a href="${pageContext.request.contextPath}/finecategory/fineberries" target="content">BERRIES</a>
    <li><a href="${pageContext.request.contextPath}/finecategory/finevegetables" target="content">VEGETABLES</a>
    <li><a href="${pageContext.request.contextPath}/finecategory/finemilkproduct" target="content">MILK_PRODUCT</a>
    <li><a href="${pageContext.request.contextPath}/finecategory/finemeat" target="content">MEAT</a>
    <li><a href="${pageContext.request.contextPath}/finecategory/finealcohol" target="content">ALCOHOLIC_BEVERAGES</a>
</div>
<br>
<br>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Back</a>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>