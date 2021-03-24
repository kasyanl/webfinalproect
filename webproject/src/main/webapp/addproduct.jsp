<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление нового продукта</title>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h2>Добавление продукта:</h2>

<form action="/webproject-1.0-SNAPSHOT/addproduct" method="post">
    <select name="category">
        <option value="FRUITS">FRUITS</option>
        <option value="BERRIES">BERRIES</option>
        <option value="VEGETABLES">VEGETABLES</option>
        <option value="MILK_PRODUCT">MILK_PRODUCT</option>
        <option value="MEAT">MEAT</option>
        <option value="ALCOHOLIC_BEVERAGES">ALCOHOLIC_BEVERAGES</option>
    </select><br/>
    <input name="name" placeholder="Название" type="text"> <br/>
    <input name="price" placeholder="цена" type="text"> <br/>
    <input name="discount" placeholder="Скидка" type="text"> <br/>
    <input type="submit" value="Сохранить">
</form>
<a href="/webproject-1.0-SNAPSHOT/menu/content" target="content">Back</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>