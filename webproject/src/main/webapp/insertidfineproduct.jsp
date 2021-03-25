<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body align="center" bgcolor="#CCFFCC" background="img/backgroung.png">
<%@include file="header.jsp"%>
<h2>Введите ID искомого продукта:</h2>
<form action="${pageContext.request.contextPath}/fineproductbyid" method="post">
    <label>
        <input name="id" placeholder="ID продукта" type="text">
    </label> <br/>
    <input type="submit" value="найти">
</form>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Back</a>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>
