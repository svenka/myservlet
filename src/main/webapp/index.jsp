<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>First JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>Hello JSP</h1>

<%
String[] tagTypes=new String[]{"for","if","case","import","tag"};
request.setAttribute("urls",tagTypes);

%>
<h3></h3>
<ul>
<c:forEach var="url" items="${urls}">
<li>
<a href="<c:url value='${url}.jsp' />">${url}</a>
</li>
</c:forEach>
</ul>

</body>
</html>