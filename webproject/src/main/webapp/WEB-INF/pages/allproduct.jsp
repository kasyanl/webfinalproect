<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" background="/resources/img/backgroung.png" bgcolor="#CCFFCC" >
<%@include file="header.jsp"%>
<h1>Весь список продуктов</h1>
<%--<%@include file="sort/sorttypedown.jsp"%>--%>
<table class="table" align="center">
    <tr>
    <th colspan="2" width="100" align="center"><b> ID</b></th>
    <th colspan="2" align="center"><b> категории</b></th>
    <th colspan="2" align="center"><b> названию</b></th>
    <th colspan="2" width="100" align="center"><b> цене</b></th>
    <th colspan="2" width="100" align="center"><b> скидке</b></th>
    <th colspan="2"width="100" align="center"><b> конечной цене</b></th>
    <td></td>
    <td></td>
    </tr>
    <tr>
        <th><a href="${pageContext.request.contextPath}/product/sortbyid" target="content"> &#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyidreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategory" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategoryreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyname" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbynamereverse" target="content">&#x21D3;</a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbypricereverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscount" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscountreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualpricereverse" target="content">&#x21D3; </a></th>
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
        <th colspan="2" width="100" style="text-align: center;"><b> ID</b></th>
        <th colspan="2" align="center"><b> категории</b></th>
        <th colspan="2" align="center"><b> названию</b></th>
        <th colspan="2" width="100" align="center"><b> цене</b></th>
        <th colspan="2" width="100" align="center"><b> скидке</b></th>
        <th colspan="2"width="100" align="center"><b> конечной цене</b></th>
        <td></td>
        <td></td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/content" target="content">Back</a>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>