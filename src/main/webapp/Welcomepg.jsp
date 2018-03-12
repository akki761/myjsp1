<%--
  Created by IntelliJ IDEA.
  User: akash
  Date: 11/3/2018
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    HttpSession session1=request.getSession(false);
if(session1.getAttribute("nm")!=null) {

    String name = (String) session1.getAttribute("nm");

    out.println("WELCOME  " + name);
}
else{
    response.sendRedirect("login.jsp");
}

%>

<a href="logout.jsp">LOG OUT</a>
</body>
</html>
