<%--
  Created by IntelliJ IDEA.
  User: parul
  Date: 10/3/18
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
HttpSession session1=request.getSession();
session1.invalidate();
response.sendRedirect("login.jsp");

%>
</body>
</html>
