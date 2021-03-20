<%--
  Created by IntelliJ IDEA.
  User: kasya
  Date: 20.03.2021
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<h3>Сортировка по:</h3>
<table class="table" align="center">
    <tr>
        <td colspan="2" width="100" align="center"><b> ID</b></td>
        <td colspan="2" width="100" align="center"><b> категории</b></td>
        <td colspan="2" width="100" align="center"><b> названию</b></td>
        <td colspan="2" width="100" align="center"><b> цене</b></td>
        <td colspan="2" width="100" align="center"><b> скидке</b></td>
        <td colspan="2" width="100" align="center"><b> конечной цене</b></td>
    </tr>
    <tr>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyid"> &#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyidreverse">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbycategory">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbycategoryreverse">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyname">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbynamereverse">&#x21D3;</a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyprice">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbypricereverse">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbydiscount">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbydiscountreverse">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyactualprice">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyactualpricereverse">&#x21D3; </a></th>
    </tr>
</table>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
