<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" background="http://sensitiv-eysk.ru/wp-content/uploads/2017/06/opera-background-light-blue.jpg" bgcolor="#CCFFCC">
<%@include file="../../header.jsp"%>
<%@include file="../navguest.jsp"%>
<h1>Продукты категории MEAT:</h1>
<h3 align="right"><a href="${pageContext.request.contextPath}/product/exportexcel/meatguest">Экспорт в Excel файл</a></h3>
<table class="table" align="center">
    <tr>
        <th width="100" align="center"><b> ID</b></th>
        <th><b> категория</b></th>
        <th><b> название</b></th>
        <th width="100" align="center"><b> цена</b></th>
        <th width="100" align="center"><b> скидка</b></th>
        <th width="100" align="center"><b> конечная цена</b></th>
    </tr>
    <c:forEach var="product" items="${product}">
        <tr>
            <td><c:out value="${product.getId()}"/></td>
            <td><c:out value="${product.getCategory()}"/></td>
            <td><c:out value="${product.getName()}"/></td>
            <td><c:out value="${product.getPrice()}"/></td>
            <td><c:out value="${product.getDiscount()}"/></td>
            <td><c:out value="${product.getActualPrice()}"/></td>
        </tr>
    </c:forEach>
    <tr>
        <th><b> ID</b></th>
        <th><b> категория</b></th>
        <th><b> название</b></th>
        <th><b> цена</b></th>
        <th><b> скидка</b></th>
        <th><b> конечная цена</b></th>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/selectcategorybyreadguest">Back</a>
<br>
<br>
<%@include file="../../footer.jsp"%>
<br>
<br>
</body>
</html>