<%-- 
    Document   : Admin_Maidinfo
    Created on : 8 Feb 2025, 7:49:39 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maid Information</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #052433;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 25px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        header .logo h1 {
            margin: 0;
            font-size: 26px;
        }
        .main-header {
            background-color: #87ceeb;
            color: black;
            font-size: 19px;
            text-align: center;
            padding: 15px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            border-radius: 8px;
            max-width: 1600px;
            margin: 15px auto 0;
        }
        .content {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #343a40;
            color: white;
        }
        .button {
            margin-top: 20px;
            text-align: center;
        }
        .button a {
            text-decoration: none;
            color: white;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Maid Booking</h1>
        </div>
    </header>
    <div class="main-header">
        <h1>Search Results</h1>
    </div>
    <div class="content">
        <table>
            <tr>
                <th>Maid ID</th>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Address</th>
                <th>Designation</th>
                <th>Working Duration</th>
                <th>Salary</th>
                <th>Mobile No</th>
                <th>Aadhar No</th>
            </tr>
            <%
                String maidIdOrName = request.getParameter("maid_id");
                if (maidIdOrName != null && !maidIdOrName.isEmpty()) {
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/info?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "12345");
                        stmt = conn.createStatement();
                        String query = "SELECT * FROM add_maid WHERE maid_id LIKE '%" + maidIdOrName + "%' OR name LIKE '%" + maidIdOrName + "%'";
                        rs = stmt.executeQuery(query);
                        while (rs.next()) {
            %>
                            <tr>
                                <td><%= rs.getString("maid_id") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("dob") %></td>
                                <td><%= rs.getString("address") %></td>
                                <td><%= rs.getString("designation") %></td>
                                <td><%= rs.getString("duration") %></td>
                                <td><%= rs.getString("salary") %></td>
                                <td><%= rs.getString("mobile_no") %></td>
                                <td><%= rs.getString("aadhar_no") %></td>
                            </tr>
            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<p>Error fetching data: " + e.getMessage() + "</p>");
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException e) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
                        if (conn != null) try { conn.close(); } catch (SQLException e) {}
                    }
                } else {
                    out.println("<p>Please enter a Maid ID or Name to search.</p>");
                }
            %>
        </table>
        <div class="button">
            <a href="Admin_Manage.jsp">Back</a>
        </div>
    </div>
</body>
</html>
