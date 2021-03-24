<%--
  Created by IntelliJ IDEA.
  User: jrr
  Date: 16.03.21
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Some error...</title>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="header.jsp"></jsp:include>
<h1><%=request.getAttribute("error")%></h1>
<a href="/webproject-1.0-SNAPSHOT/menu/content" target="content">Home</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>