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

<%--<form action="/webproject-1.0-SNAPSHOT/sort/sortbyidreverse" method="get">--%>
<%--    <select name="sort">--%>
<%--        <option <a href="/webproject-1.0-SNAPSHOT/sort/sortbyid" target="content">ID &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbyidreverse">ID &#x21D3;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbycategory">category &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbycategoryreverse">category &#x21D3;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbyname">name &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbynamereverse">name &#x21D3;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbyprice">price &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbypricereverse">price &#x21D3;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbydiscount">discount &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbydiscountreverse">discount &#x21D3;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbyactualprice">actualPrice &#x21D1;</option>--%>
<%--        <option value="/webproject-1.0-SNAPSHOT/sort/sortbyactualpricereverse">actualPrice &#x21D3;</option>--%>
<%--    </select><br/>--%>

<%--    <input type="submit" value="выбрать">--%>
<%--</form>--%>


<table class="table" align="center">
    <tr>
        <td colspan="2" width="100" align="center"><b> ID</b></td>
        <td colspan="2" width="100" align="center"><b> категории</b></td>
        <td colspan="2" width="100" align="center"><b> названию</b></td>
        <td colspan="2" width="100" align="center"><b> цене</b></td>
        <td colspan="2" width="100" align="center"><b> скидке</b></td>
        <td colspan="2" width="100" align="center"><b> конечной цене</b></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyid" target="content"> &#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyidreverse" target="content">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbycategory" target="content">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbycategoryreverse" target="content">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyname" target="content">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbynamereverse" target="content">&#x21D3;</a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyprice" target="content">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbypricereverse" target="content">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbydiscount" target="content">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbydiscountreverse" target="content">&#x21D3; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyactualprice" target="content">&#x21D1; </a></th>
        <th><a href="/webproject-1.0-SNAPSHOT/sort/sortbyactualpricereverse" target="content">&#x21D3; </a></th>
    </tr>
</table>
</body>
</html>
