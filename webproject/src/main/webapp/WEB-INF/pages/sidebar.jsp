<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div face="arial" size="+1">
    <li><a href="${pageContext.request.contextPath}/content" target="content">Главная</a>
    <li><a href="${pageContext.request.contextPath}/product/allproduct" target="content">Список всех продуктов</a>
    <li><a href="${pageContext.request.contextPath}/selectcategorybyread" target="content">Получить список одной категории</a>
<%--    <li><a href="/webproject-1.0-SNAPSHOT/insertidfineproduct" target="content">Найти продукт по ID</a>--%>
    <li><a href="${pageContext.request.contextPath}/product/addproduct" target="content">Добавить новый продукт</a>
    </div>
</body>
</html>
