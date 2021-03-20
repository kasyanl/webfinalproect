<%@ page import="bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
<%@ page import="repository.ProductDataBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
        <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center">
<h1>Весь список продуктов</h1>
<table class="table" align="center">
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
    <% ProductDataBase.createList();
        List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
        for (Product product : listProduct) {
            try {
                out.print("<tr>" +
                        "<td>" + product.getId() + "</td>" +
                        "<td>" + product.getCategory() + "</td>" +
                        "<td>" + product.getName() + "</td>" +
                        "<td>" + product.getPrice() + "</td>" +
                        "<td>" + product.getDiscount() + "</td>" +
                        "<td>" + product.getActualPrice() + "</td>" +
                        "<td><a href=/webproject-1.0-SNAPSHOT/deleteproduct?id=" + product.getId() + ">Х</a></td>" +
                        "<td><a href=/webproject-1.0-SNAPSHOT/editproduct?id=" + product.getId() + ">edit</a></td>" +
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

<jsp:include page="sort/sorttypedown.jsp"></jsp:include>
</body>
</html>