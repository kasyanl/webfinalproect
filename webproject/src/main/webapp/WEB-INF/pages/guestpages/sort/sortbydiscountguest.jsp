<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center" background="http://sensitiv-eysk.ru/wp-content/uploads/2017/06/opera-background-light-blue.jpg" bgcolor="#CCFFCC">
<%@include file="../../header.jsp"%>
<%@include file="../navguest.jsp"%>
<h1>Весь список продуктов</h1>
<br>
<h3>сортировка по установленной скидке</h3>
<h3 align="right"><a href="${pageContext.request.contextPath}/exportexcelguest">Экспорт в Excel файл</a></h3>
<br>
<table class="table" align="center">
    <tr>
        <th colspan="2" width="100" align="center"><b> ID</b></th>
        <th colspan="2" align="center"><b> категории</b></th>
        <th colspan="2" align="center"><b> названию</b></th>
        <th colspan="2" width="100" align="center"><b> цене</b></th>
        <th colspan="2" width="100" align="center"><b> скидке</b></th>
        <th colspan="2"width="100" align="center"><b> конечной цене</b></th>
    </tr>
    <tr>
        <th><a href="${pageContext.request.contextPath}/product/sortbyidguest"> &#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyidreverseguest">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategoryguest">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategoryreverseguest">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbynameguest">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbynamereverseguest">&#x21D3;</a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbypriceguest">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbypricereverseguest">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscountguest">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscountreverseguest">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualpriceguest">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualpricereverseguest">&#x21D3; </a></th>
    </tr>
    <c:forEach var="product" items="${product}">
        <tr>
            <td colspan="2" align="center"><c:out value="${product.getId()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getCategory()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getName()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getPrice()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getDiscount()}"/></td>
            <td colspan="2" align="center"><c:out value="${product.getActualPrice()}"/></td>
        </tr>
    </c:forEach>
    <tr>
        <th colspan="2" width="100" align="center"><b> ID</b></th>
        <th colspan="2" align="center"><b> категории</b></th>
        <th colspan="2" align="center"><b> названию</b></th>
        <th colspan="2" width="100" align="center"><b> цене</b></th>
        <th colspan="2" width="100" align="center"><b> скидке</b></th>
        <th colspan="2"width="100" align="center"><b> конечной цене</b></th>
    </tr>
</table>

<a href="${pageContext.request.contextPath}/contentguest">Back</a>
<br>
<br>
<%@include file="../../footer.jsp"%>
<br>
<br>
</body>
</html>