<%@ page import="bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
<%@ page import="proccesor.SortDataBase" %><%--
  Created by IntelliJ IDEA.
  User: kasya
  Date: 20.03.2021
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Учет продуктов</title>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h1>Весь список продуктов</h1>
<br>
<h3>сортировка по названию продукта</h3>
<br>
<jsp:include page="sorttypedown.jsp"></jsp:include>
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
    <%  List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
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
</table>>
<jsp:include page="sorttypedown.jsp"></jsp:include>
<br>
<br>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>