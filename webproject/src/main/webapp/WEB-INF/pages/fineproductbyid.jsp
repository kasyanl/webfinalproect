<%@ page import="kasyan.bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp"%>
<h1>Ваш продукт найден!</h1>
<%@include file="../sort/sorttypedown.jsp"%>
<table class="table" align="center">
    <tr>
        <td><b>ID</b></td>
        <td><b>Category</b></td>
        <td><b>Name</b></td>
        <td><b>Price</b></td>
        <td><b>Discount</b></td>
        <td><b>Actual price</b></td>
        <td><b></b></td>
        <td><b></b></td>
    </tr>
    <% Product product = (Product) request.getAttribute("product");
        out.print(product.toString());%>
    <tr>
        <th><b>ID</b></th>
        <th><b>Category</b></th>
        <th><b>Name</b></th>
        <th><b>Price</b></th>
        <th><b>Discount</b></th>
        <th><b>Actual price</b></th>
        <th><b></b></th>
        <th><b></b></th>
    </tr>
</table>
<%@include file="../sort/sorttypedown.jsp"%>
<a href="${pageContext.request.contextPath}/allproduct" target="content">Back</a>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>