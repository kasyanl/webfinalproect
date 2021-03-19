<%@ page import="bean.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editing student.</title>
</head>
<body align="center">
<h2>Insert values:</h2>

<% Student student = (Student) request.getAttribute("student"); %>
<form action="/webproject-1.0-SNAPSHOT/editstudent?id=<%=student.getId()%>" method="post">
    <input name="firstName" placeholder="firstName" type="text" value="<%=student.getFirstName()%>"> <br/>
    <input name="lastName" placeholder="lastName" type="text" value="<%=student.getLastName()%>"> <br/>
    <input name="age" placeholder="age" type="text" value="<%=student.getAge()%>"> <br/>
    <input type="submit" value="Save edit">
</form>
<a href="/webproject-1.0-SNAPSHOT">Back</a>
</body>
</html>