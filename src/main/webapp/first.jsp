<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.List" %>
<%@ page import="kfy.User" %>

<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>
First JSP
</title>
</head>
<body>
<h1>Hello JSP</h1>


<%
response.getWriter().write("First message");
out.println("right after header");

%>
<br>
<%=request.getRequestURI()

%>
<br>
<%= LocalDateTime.now()%>
<hr>
<%
List<User> users=(List) request.getAttribute("users");
User anUser=users.get(0);
%>
<b><%= (anUser.getName())%></b>
<i><%= (anUser.getCountry())%></i>
<u><%= (anUser.getAge())%></u>

<br>
<h2>circle For</h2>

<table border="1">
<caption>Table users</caption>
<% for (User user: users) {%>
<tr>
<td><%= user.getName() %></td>

<td>
    <% if (user.getCountry().equals("USA")) { %>
            <u><%= user.getCountry() %> </u>
            <% } else { %>
            <%= user.getCountry() %>
            <% } %>

</td>


<td><%= user.getAge() %></td>
</tr>
<% } %>

</table>

</body>
</html>