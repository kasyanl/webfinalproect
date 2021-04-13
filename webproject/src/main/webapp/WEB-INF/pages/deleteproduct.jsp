<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kasyan.bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Удаление продукта</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp"%>
<h2>Удаление продукта</h2>
<h3>Вы действительно хотите удалить данный продукт?</h3>
<c: var="product" items="${product}">
<%--<% Product product = (Product) request.getAttribute("product");--%>
    <c:out value="${product.getId()}"/>
<%--    out.print("Вы действительно хотите удалить "+ product.getCategory() + " " + product.getName() + " из базы?");%>--%>

<form action="${pageContext.request.contextPath}/product/deleteproduct?id=${product.getId()}" method="post">
    <input type="submit" value="Подтвердить">

</form>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>
