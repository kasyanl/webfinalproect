<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление нового продукта</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp"%>
<h2>Добавление продукта:</h2>

<form action="${pageContext.request.contextPath}/addproduct" method="post">
    <label><select name="category">
            <option value="FRUITS">FRUITS</option>
            <option value="BERRIES">BERRIES</option>
            <option value="VEGETABLES">VEGETABLES</option>
            <option value="MILK_PRODUCT">MILK_PRODUCT</option>
            <option value="MEAT">MEAT</option>
            <option value="ALCOHOLIC_BEVERAGES">ALCOHOLIC_BEVERAGES</option>
        </select>
    </label><br/>
    <label><input name="name" placeholder="Название" type="text"></label> <br/>
    <label><input name="price" placeholder="цена" type="text"></label> <br/>
    <label><input name="discount" placeholder="Скидка" type="text"></label> <br/>
    <input type="submit" value="Сохранить">
</form>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Back</a>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>