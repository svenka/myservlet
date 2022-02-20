<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>My Custom taglibP</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1>Custom taglib</h1>
<%@ taglib uri="kfyTags" prefix="myTag" %>

<myTag:emptyTag/>

<myTag:paramsTag

a="10"
b="12"
>
<%= 100*3 %>
</myTag:paramsTag>

<myTag:textBodyTag

iterations="3"
>
<tr>
<td>Some text</td>
<td><myTag:emptyTag/></td>
<td><%= 100*3 %></td>
</tr>
</myTag:textBodyTag>


<myTag:expressionBodyTag>How wonderful - it is that nobody need wait .a single moment - before starting to improve the world.Said - Anne Frank
</myTag:expressionBodyTag>

</body>
</html>