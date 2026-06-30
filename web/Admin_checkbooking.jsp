<%-- 
    Document   : Admin_checkbooking
    Created on : 8 Feb 2025, 5:18:55 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Maid Booking</title>
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
            font-size: 25px;
        }
        .main-header {
            background-color: #87ceeb;
            color: black;
            font-size: 20px;
            text-align: center;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 12px;
            border-radius: 8px;
            max-width: 16000px;
            margin: 12px auto 0;
        }
        .content {
            max-width: 1300px;
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
        <h1>Check Maid Booking</h1>
    </div>
    <div class="content">
        <table>
            <tr>
                <th>Booking ID</th>
                <th>Maid ID</th>
                <th>Maid Name</th>
                <th>Client Name</th>
                <th>Client Address</th>
                <th>Booking Date</th>
                <th>Service Type</th>
            </tr>
            <%
                Statement st = con.createStatement();
                String query = "SELECT * FROM info.hire_maid";
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("booking_id") %></td>
                <td><%= rs.getInt("maid_id") %></td> <!-- Closing tag for <td> -->
                <td><%= rs.getString("m_name") %></td>
                <td><%= rs.getString("client_name") %></td>
                <td><%= rs.getString("client_address") %></td>
                <td><%= rs.getString("hire_date") %></td> <!-- Ensure correct column name -->
                <td><%= rs.getString("service_type") %></td>
            </tr>
            <%
                }
                rs.close();
                st.close();
            %>
        </table>
        <div class="button">
            <a href="Admin_Manage.jsp">Back</a>
        </div>
    </div>
</body>
</html>
