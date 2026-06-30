<%-- 
    Document   : Connection
    Created on : 2 Feb 2025, 10:42:10 pm
    Author     : Hp
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String url = "jdbc:mysql://localhost:3306/info?zeroDateTimeBehavior=CONVERT_TO_NULL";
            String user = "root";
            String password = "12345";
            
            Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(url, user, password);
                out.println("<!-- Database connection successful -->");
            } catch (Exception e) {
                out.println("<!-- Database connection failed: " + e.getMessage() + " -->");
            }
        %>
    </body>
</html>
