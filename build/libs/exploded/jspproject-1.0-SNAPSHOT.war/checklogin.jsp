<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: parul
  Date: 10/3/18
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        int userid = Integer.parseInt(request.getParameter("uid"));
        String pass = request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspproject", "root", "ttn");
        PreparedStatement ps = con.prepareStatement("select name from signupdata where uid=? and pwd=?");
        ps.setInt(1, userid);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            String n = rs.getString("name");
            HttpSession session1=request.getSession();
            session1.setAttribute("nm",n);
            System.out.println(n);
            response.sendRedirect("Welcomepg.jsp");
        }
        else{
                response.sendRedirect("login.jsp");
        }
    }
catch(Exception ex)
        {
            out.println(ex.toString());

        }


%>

</body>
</html>
