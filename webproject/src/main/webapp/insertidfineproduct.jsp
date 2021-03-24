<%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 24.03.2021
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h2>Введите ID искомого продукта:</h2>

<form action="/webproject-1.0-SNAPSHOT/fineproductbyid" method="post">

    <input name="id" placeholder="ID продукта" type="text"> <br/>
    <input type="submit" value="найти">
</form>
<a href="/webproject-1.0-SNAPSHOT/menu/content" target="content">Back</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
