<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление нового продукта</title>
</head>
<body align="center">
<jsp:include page="header.jsp"></jsp:include>
<h2>Добавление продукта:</h2>

<form action="/webproject-1.0-SNAPSHOT/addproduct" method="post">
    <input name="Категория" placeholder="Категория" type="text"> <br/>
    <input name="Название" placeholder="Название" type="text"> <br/>
    <input name="цена" placeholder="цена" type="text"> <br/>
    <input name="Скидка" placeholder="Скидка" type="text"> <br/>
    <input type="submit" value="Сохранить">
</form>
<a href="/webproject-1.0-SNAPSHOT/allproduct" target="content">Back</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>