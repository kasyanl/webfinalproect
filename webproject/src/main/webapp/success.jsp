<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body align="center" bgcolor="#CCFFCC" background="img/backgroung.png">
<%@include file="header.jsp"%>
<h1><%= request.getAttribute("message") %></h1>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Home</a>
<%@include file="footer.jsp"%>
</body>
</html>