<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добро пожаловать</title>
</head>
<body hight="center" align="center" bgcolor="#CCFFCC"
      background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp" %>
<h2>Добро пожаловать в Систему учета продуктов.
    <br>Для работы с базой данных введите логи и пароль, либо войдите как гость (доступна возможность только просмотра)
</h2>

<form action="${pageContext.request.contextPath}/person/startlogin" method="post">
    <label><input name="login" placeholder="Логин" type="text"></label> <br/>
    <label><input name="password" placeholder="Пароль" type="text"></label> <br/>
    <input type="submit" value=Войти>
</form>
<h4><a href="${pageContext.request.contextPath}/contentguest">Зайти как ГОСТЬ</a></h4>
<br>
<br>
<%@include file="footer.jsp" %>
<br>
<br>
</body>
</html>