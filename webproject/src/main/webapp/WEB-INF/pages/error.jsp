<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Some error...</title>
</head>
<body align="center" background="https://img2.goodfon.ru/original/1366x768/2/c7/tekstury-tekstura-uzory-belyy.jpg" bgcolor="#CCFFCC" >
<%@include file="header.jsp"%>
<h1><%=request.getAttribute("error")%></h1>
<a href="${pageContext.request.contextPath}/content" target="content">Home</a>
<%@include file="footer.jsp"%>
</body>
</html>