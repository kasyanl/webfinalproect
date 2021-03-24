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
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h1>Выберите категориию:</h1>

<div face="arial" size="+1">
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/finefruits" target="content">FRUITS</a>
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/fineberries" target="content">BERRIES</a>
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/finevegetables" target="content">VEGETABLES</a>
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/finemilkproduct" target="content">MILK_PRODUCT</a>
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/finemeat" target="content">MEAT</a>
    <li><a href="/webproject-1.0-SNAPSHOT/finecategory/finealcohol" target="content">ALCOHOLIC_BEVERAGES</a>
</div>
<a href="/webproject-1.0-SNAPSHOT/menu/content" target="content">Back</a>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>