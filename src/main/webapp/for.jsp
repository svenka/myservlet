<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>For loop JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h3>for each loop</h3>
<%
String[] times=new String[]{"summer","autumn","winter","spring"};
request.setAttribute("items",times);
%>

<ul>
<c:forEach var="item" items="${items}">
        <li>${item}</li>
    </c:forEach>
<ul>


<h4>for each witn counter</h4>
<table>
<thead>
<tr>
<th>item</th>
<th>index</th>
<th>count</th>
<th>first</th>
<th>last</th>
<th>step</th>
</tr>
</thead>
<tbody>

<c:forEach var="item" items="${items}" step="1" varStatus="status">
<tr>
<td>${item}</td>
<td>${status.index}</td>
<td>${status.count}</td>
<td>${status.first}</td>
<td>${status.last}</td>
<td>${status.step}</td>
</tr>
</c:forEach>

</tbody>
</table>

<h4>for token loop</h4>
<ul>
<c:forTokens items="Moscow,Saint-Petersburg,London,Rome,Paris" delims="," var="name">
<li>${name}</li>
</c:forTokens>
</ul>
</body>
</html>