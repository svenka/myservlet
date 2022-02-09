<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>import statement JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>import page main statement</h1>


<c:url value="title.jsp" var="importUrl">
<c:param name="pageName" value="import templete page" />
</c:url>
<hr>
<c:import url="${importUrl}"/>



</body>
</html>