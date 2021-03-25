<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Some error...</title>
</head>
<body align="center" bgcolor="#CCFFCC" background="${pageContext.request.contextPath}/img/backgroung.png">
<%@include file="header.jsp"%>
<h1><%=request.getAttribute("error")%></h1>
<a href="${pageContext.request.contextPath}/menu/content" target="content">Home</a>
<%@include file="footer.jsp"%>
</body>
</html>