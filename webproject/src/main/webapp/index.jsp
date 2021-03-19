<%@ page import="java.time.LocalDateTime" %>
<%--
  Created by IntelliJ IDEA.
  User: jrr
  Date: 15.03.21
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My school</title>
</head>
<body align="center">
<h1>This is database of my school.</h1>
<h2><%= LocalDateTime.now().toString()%>
</h2>
<a href="/webproject-1.0-SNAPSHOT/allstudents">Check all students</a> | <a href="/webproject-1.0-SNAPSHOT/addstudent">Add new student</a>
</body>
</html>