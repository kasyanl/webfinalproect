<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h4>Сортировка по:</h4>
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
        <th><a href="${pageContext.request.contextPath}/sort/sortbyid" target="content"> &#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbyidreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbycategory" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbycategoryreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbyname" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbynamereverse" target="content">&#x21D3;</a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbyprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbypricereverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbydiscount" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbydiscountreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbyactualprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/sort/sortbyactualpricereverse" target="content">&#x21D3; </a></th>
    </tr>
</table>
</body>
</html>
