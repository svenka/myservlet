<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>if statement JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>If</h1>
<%
String hourParam=request.getParameter("hour");
request.setAttribute("hourVar",hourParam);
%>

<c:if test="${hourVar>=10 && hourVar<19 }">
${hourVar} it is a day
</c:if>
</body>
</html>