<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>import statement JSP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>title jsp page</h1>
<%
String pageNameParam=request.getParameter("pageName");
request.setAttribute("pageNameVar",pageNameParam);
%>

<h3>This is subpart of ${pageNameVar}</h3>





</body>
</html>