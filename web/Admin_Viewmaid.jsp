<%-- 
    Document   : Admin_Viewmaid
    Created on : 8 Feb 2025, 5:06:12 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maid Details</title>
    <style>
        body {
            background-color: #f8f9fa;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        header {
            background-color: #343a40; 
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            border-radius: 10px;
        }
        h1 {
            font-size: 25px; 
            text-align: center;
            margin-top: 10px;
            background-color: transparent;
            color: white;
            padding: 10px;
            border-radius: 10px;
        }
        header .logo h1 {
            margin: 0;
            font-size: 28px;
        }
        h2 {
            font-size: 50px; /* Changed font size to make h2 larger than h1 */
            text-align: center;
            margin-top: 10px;
            background-color: #17a2b8;
            color: white;
            padding: 10px;
            border-radius: 10px;
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
    <h2>View Maid Profile</h2>
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
            Statement st = con.createStatement();
            String query = "SELECT * FROM info.add_maid";
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("Maid_ID") %></td>
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
            rs.close();
            st.close();
        %>
    </table>
    <div class="button">        
        <a href="Admin_Manage.jsp">Back</a> 
    </div>
</body>
</html>
