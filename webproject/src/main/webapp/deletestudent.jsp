<%@ page import="bean.Student" %><%--
<%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 19.03.2021
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting student</title>
</head>
<body>
<h2>Delete process</h2>
<h3>Are you really sure?</h3>
<% Student student = (Student) request.getAttribute("student");
    out.print(student.getFirstName() + " " + student.getLastName() + " dont wanna be deleted!");%>

<form action="/webproject-1.0-SNAPSHOT/deletestudent?id=<%=student.getId()%>" method="post">
    <input type="submit" value="Im sure.">
</form>

</body>
</html>
