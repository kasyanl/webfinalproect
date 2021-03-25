<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<nav>
    <ul>
        <a href="${pageContext.request.contextPath}/allproducts" target="content">Список всех продуктов</a>
        <a href="${pageContext.request.contextPath}/selectcategorybyread" target="content">Получить список одной категории</a>
        <%--    <li><a href="/webproject-1.0-SNAPSHOT/insertidfineproduct" target="content">Найти продукт по ID</a>--%>
        <a href="${pageContext.request.contextPath}/addproduct" target="content">Добавить новый продукт</a>
    </ul>
</nav>
</body>
</html>
