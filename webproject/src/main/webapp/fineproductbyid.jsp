<%@ page import="bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h1>Ваш продукт найден!</h1>
<jsp:include page="sort/sorttypedown.jsp"></jsp:include>
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
<jsp:include page="sort/sorttypedown.jsp"></jsp:include>
<a href="/webproject-1.0-SNAPSHOT/allproduct" target="content">Back</a>
<br>
<br>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>