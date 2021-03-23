<%@ page import="bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Изменение данных.</title>
</head>
<body align="center">
<jsp:include page="/header.jsp"></jsp:include>
<jsp:include page="/nav.jsp"></jsp:include>
<h2>Замените необходимые данные:</h2>

<% Product product = (Product) request.getAttribute("product"); %>
<form action="/webproject-1.0-SNAPSHOT/editproduct?id=<%=product.getId()%>" method="post">
    <input name="Категория" placeholder="Категория" type="text" value="<%=product.getCategory()%>"> <br/>
    <input name="Название" placeholder="Название" type="text" value="<%=product.getName()%>"> <br/>
    <input name="Цена" placeholder="Цена" type="text" value="<%=product.getPrice()%>"> <br/>
    <input name="Скидка" placeholder="Скидка" type="text" value="<%=product.getDiscount()%>"> <br/>
    <input type="submit" value="Сохранить изменения">
</form>
<a href="/webproject-1.0-SNAPSHOT" target="content">Возврат</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>