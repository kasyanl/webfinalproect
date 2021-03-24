<%@ page import="bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Изменение данных.</title>
</head>
<body align="center" bgcolor="#CCFFCC">
<jsp:include page="/header.jsp"></jsp:include>
<h2>Замените необходимые данные:</h2>
<% Product product = (Product) request.getAttribute("product"); %>
<form action="/webproject-1.0-SNAPSHOT/editproduct?id=<%=product.getId()%>" method="post">
    <select <%=product.getCategory()%> name="category">
        <option value="<%=product.getCategory()%>"><%=product.getCategory()%></option>
        <option value="FRUITS">FRUITS</option>
        <option value="BERRIES">BERRIES</option>
        <option value="VEGETABLES">VEGETABLES</option>
        <option value="MILK_PRODUCT">MILK_PRODUCT</option>
        <option value="MEAT">MEAT</option>
        <option value="ALCOHOLIC_BEVERAGES">ALCOHOLIC_BEVERAGES</option>
    </select><br/>
    <input name="name" placeholder="название" type="text" value="<%=product.getName()%>"> <br/>
    <input name="price" placeholder="цена" type="text" value="<%=product.getPrice()%>"> <br/>
    <input name="discount" placeholder="скидка" type="text" value="<%=product.getDiscount()%>"> <br/>
    <input type="submit" value="Сохранить изменения">
</form>
<a href="/webproject-1.0-SNAPSHOT/menu/content" target="content">Home</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>