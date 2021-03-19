<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding new student...</title>
</head>
<body align="center">
<h2>Insert values:</h2>

<form action="/webproject-1.0-SNAPSHOT/addstudent" method="post">
    <input name="firstName" placeholder="Enter firstname" type="text"> <br/>
    <input name="lastName" placeholder="Enter lastname" type="text"> <br/>
    <input name="age" placeholder="Enter age" type="text"> <br/>
    <input type="submit" value="Save">
</form>
<a href="/webproject-1.0-SNAPSHOT">Back</a>
</body>
</html>