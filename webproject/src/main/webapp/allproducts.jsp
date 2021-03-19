<%@ page import="bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
import bean.Product;

import java.io.IOException;
import java.util.List;
<%@ page contentType= "text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система учета продуктов</title>
</head>
<body align="center">
<h1>This is list of school students.</h1>
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
    <% List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
        for (Product product : listProduct) {
           try {
                out.print("<tr><td>" + product.getId() + "</td>"+
                                "<td>" + product.getCategory() + "</td>"+
                                "<td>" + product.getName() + "</td>" +
                                "<td>" + product.getPrice() + "</td>"+
                                "<td>" + product.getDiscount() + "</td>"+
                                "<td>" + product.getActualPrice() + "</td>"+
                                "<td><a href=/webproject-1.0-SNAPSHOT/deletestudent?id=" + product.getId() +
                        ">Х</a></td>" + "<td><a href=/webproject-1.0-SNAPSHOT/editstudent?id=" + product.getId() +
                        ">edit</a></td></tr>");
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
<a href="/webproject-1.0-SNAPSHOT">Back</a>
</body>
</html>