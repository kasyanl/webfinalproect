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
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp"%>
<h1>Весь список продуктов</h1>
<%@include file="sort/sorttypedown.jsp"%>
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
    <% List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
        for (Product product : listProduct) {
            try {
                out.print("<tr>" +
                        "<td>" + product.getId() + "</td>" +
                        "<td>" + product.getCategory() + "</td>" +
                        "<td>" + product.getName() + "</td>" +
                        "<td>" + product.getPrice() + "</td>" +
                        "<td>" + product.getDiscount() + "</td>" +
                        "<td>" + product.getActualPrice() + "</td>" +
                        "<td><a href=/webproject-1.0-SNAPSHOT/deleteproduct?id=" + product.getId() + " target=\"content\">Х</a></td>" +
                        "<td><a href=/webproject-1.0-SNAPSHOT/editproduct?id=" + product.getId() + " target=\"content\">edit</a></td>" +
                        "</tr>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    %>
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
<%@include file="sort/sorttypedown.jsp"%>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Back</a>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>