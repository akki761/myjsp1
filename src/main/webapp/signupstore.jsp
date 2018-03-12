<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: akash
  Date: 11/3/2018
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signup-store</title>
</head>
<body>
<%
    int userid=Integer.parseInt(request.getParameter("id"));
    String name1=request.getParameter("name");
    String password=request.getParameter("pwd");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspproject","root","ttn");
        PreparedStatement ps = con.prepareStatement("insert into signupdata values(?,?,?)");
        ps.setInt(1, userid);
        ps.setString(2, name1);
        ps.setString(3, password);
        ps.execute();
        con.close();
out.println("done");
response.sendRedirect("login.jsp");
    }
    catch (Exception ex){
            out.println(ex.toString());
    }
%>

</body>
</html>
