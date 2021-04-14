<%--
  Created by IntelliJ IDEA.
  User: kasya
  Date: 13.04.2021
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body hight="center" align="center" background="/resources/img/backgroung.png" bgcolor="#CCFFCC" >
<%@include file="header.jsp"%>
<h4>Логин и/или пароль не верен. Пожалуйста, повторите попытку</h4>

<form action="${pageContext.request.contextPath}/person/startlogin" method="post">
    <label><input name="login" placeholder="Логин" type="text"></label> <br/>
    <label><input name="password" placeholder="Пароль" type="text"></label> <br/>
    <input type="submit" value=Войти>
</form>
<br>
<br>
<%@include file="footer.jsp"%>
<br>
<br>
</body>
</html>
