<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h4>Сортировка по:</h4>

<%--<form>--%>
<%--    <label>--%>
<%--        <select name="sort">--%>
<%--            <option value="${pageContext.request.contextPath}/product/sortbyid"><a href="${pageContext.request.contextPath}/product/sortbyid" target="content">ID &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbyidreverse" target="content">ID &#x21D3; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbycategory" target="content">категория &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbycategoryreverse" target="content">категория &#x21D3; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbyname" target="content">название &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbynamereverse" target="content">название &#x21D3;</a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbyprice" target="content">цена &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbypricereverse" target="content">цена &#x21D3; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbydiscount" target="content">скидка &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbydiscountreverse" target="content">скидка &#x21D3; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbyactualprice" target="content">конечнаяй цена &#x21D1; </a></option>--%>
<%--            <option><a href="${pageContext.request.contextPath}/product/sortbyactualpricereverse" target="content">конечнаяй цена &#x21D3; </a></option>--%>
<%--        </select>--%>
<%--    </label><br/>--%>
<%--    <input type="submit" value="отсортировать">--%>
<%--</form>--%>


<table class="table" align="center">
    <tr>
        <th colspan="2" width="100" align="center"><b> ID</b></th>
        <th colspan="2" width="100" align="center"><b> категории</b></th>
        <th colspan="2" width="100" align="center"><b> названию</b></th>
        <th colspan="2" width="100" align="center"><b> цене</b></th>
        <th colspan="2" width="100" align="center"><b> скидке</b></th>
        <th colspan="2" width="100" align="center"><b> конечной цене</b></th>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <th><a href="${pageContext.request.contextPath}/product/sortbyid" target="content"> &#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyidreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategory" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbycategoryreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyname" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbynamereverse" target="content">&#x21D3;</a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbypricereverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscount" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbydiscountreverse" target="content">&#x21D3; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualprice" target="content">&#x21D1; </a></th>
        <th><a href="${pageContext.request.contextPath}/product/sortbyactualpricereverse" target="content">&#x21D3; </a>
        </th>
    </tr>
</table>
</body>
</html>
