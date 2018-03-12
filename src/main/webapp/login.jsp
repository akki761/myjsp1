<%--
  Created by IntelliJ IDEA.
  User: akash
  Date: 11/3/2018
  Time: 1:02 PM
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
if(session1.getAttribute("nm")!=null){
    response.sendRedirect("Welcomepg.jsp");
}
%>

<form name="form2" action="checklogin.jsp">
    Enter USER ID:
    <input type="text" name="uid"><br>
    Enter Password:
    <input type="text" name="pwd"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
