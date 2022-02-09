<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>Case statement JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>Case statement</h1>
<%
String degreeParam=request.getParameter("degree");
request.setAttribute("degreeVar",degreeParam);
%>

<c:choose>
<c:when test="${degreeVar <- 25}">its frost</c:when>
<c:when test="${degreeVar < 5}">its cold</c:when>
<c:when test="${degreeVar < 25}">its warm</c:when>
<c:when test="${degreeVar >= 25}">its damn hot</c:when>
<c:otherwise>Where is your temperature</c:otherwise>
</c:choose>
</body>
</html>