<%@ page import="bean.Product" %>
<%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 19.03.2021
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Удаление продукта</title>
</head>
<body align="center">
<jsp:include page="/header.jsp"></jsp:include>
<h2>Удаление продукта</h2>
<h3>Вы действительно хотите удалить данный продукт?</h3>
<% Product product = (Product) request.getAttribute("product");
    out.print("Вы действительно хотите удалить "+ product.getCategory() + " " + product.getName() + " из базы?");%>

<form action="/webproject-1.0-SNAPSHOT/deleteproduct?id=<%=product.getId()%>" method="post">
    <input type="submit" value="Подтвердить">
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
