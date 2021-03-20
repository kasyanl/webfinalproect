<%@ page import="bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editing student.</title>
</head>
<body align="center">
<h2>Insert values:</h2>

<% Product product = (Product) request.getAttribute("product"); %>
<form action="/webproject-1.0-SNAPSHOT/editproduct?id=<%=product.getId()%>" method="post">
    <input name="category" placeholder="category" type="text" value="<%=product.getCategory()%>"> <br/>
    <input name="name" placeholder="name" type="text" value="<%=product.getName()%>"> <br/>
    <input name="price" placeholder="price" type="text" value="<%=product.getPrice()%>"> <br/>
    <input name="discount" placeholder="discount" type="text" value="<%=product.getDiscount()%>"> <br/>
    <input type="submit" value="Save edit">
</form>
<a href="/webproject-1.0-SNAPSHOT">Back</a>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>