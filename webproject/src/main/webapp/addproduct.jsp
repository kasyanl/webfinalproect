<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding new student...</title>
</head>
<body align="center">
<h2>Insert values:</h2>

<form action="/webproject-1.0-SNAPSHOT/addproduct" method="post">
    <input name="category" placeholder="Enter category" type="text"> <br/>
    <input name="name" placeholder="Enter name" type="text"> <br/>
    <input name="price" placeholder="Enter price" type="text"> <br/>
    <input name="discount" placeholder="Enter discount" type="text"> <br/>
    <input type="submit" value="Save">
</form>
<a href="/webproject-1.0-SNAPSHOT">Back</a>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>