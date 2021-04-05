<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/page/img/backgroung.png">
<%@include file="../header.jsp"%>
<h1>Продукты категории ALCOHOLIC_BEVERAGES:</h1>
<table class="table" align="center">
    <tr>
    <td><b> ID</b></td>
    <td><b> категории</b></td>
    <td><b> названию</b></td>
    <td><b> цене</b></td>
    <td><b> скидке</b></td>
    <td><b> конечной цене</b></td>
    <td></td>
    <td></td>
    </tr>
    <c:forEach var="product" items="${product}">
        <tr>
            <td colspan="2" align="center"><c:out value="${product.getId()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getCategory()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getName()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getPrice()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getDiscount()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getActualPrice()}"/></td>
            <td colspan="2" align="center"><a href="${pageContext.request.contextPath}/product/deleteproduct?id=${product.getId()}">Удалить</a></td>
            <td colspan="2" align="center"><a href="${pageContext.request.contextPath}/product/editproduct?id=${product.getId()}">Изменить</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><b> ID</b></td>
        <td><b> категории</b></td>
        <td><b> названию</b></td>
        <td><b> цене</b></td>
        <td><b> скидке</b></td>
        <td><b> конечной цене</b></td>
        <td></td>
        <td></td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/selectcategorybyread" target="content">Back</a>
<br>
<br>
<%@include file="../footer.jsp"%>
<br>
<br>
</body>
</html>