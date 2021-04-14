<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="kasyan.bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Удаление продукта</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="../header.jsp"%>
<%@include file="nav.jsp"%>
<h2>Удаление продукта</h2>
<h3>Вы действительно хотите удалить данный продукт?</h3>
<c:forEach items="${product}">
<tr>
    <td colspan="2" align="center"><c:out value="${product.getCategory()}"/></td>
    <td colspan="2" align="center"><c:out value="${product.getName()}"/></td>
    </tr>
</c:forEach>
<form action="${pageContext.request.contextPath}/product/allproduct?id=${product.getId()}" method="get">
    <input type="submit" value="Подтвердить">

</form>
<%@include file="../footer.jsp"%>
<br>
<br>
</body>
</html>
