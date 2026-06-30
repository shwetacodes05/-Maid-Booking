<%-- 
Document : HireMaidReports
Created on : 23 Feb 2025, 5:03:32 pm 
Author : Hp
--%>

<%@ include file="Connection.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hire Maid Report</title>
    <style>
        body {
            background-color: #f0f8ff;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 60px;
        }
        .container {
            margin-top: 40px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            width: 800px;
            text-align: center;
            margin-bottom: 20px;
        }
        header {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
            font-weight: bold;
            border-bottom: 2px solid #007bff;
            padding-bottom: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .date-fields {
            display: flex;
            justify-content: space-between;
            width: 100%;
            align-items: center;
            margin-bottom: 20px;
        }
        form label {
            flex: 1;
            text-align: left;
            font-weight: bold;
            margin-bottom: 5px;
        }
        form input[type="date"] {
            flex: 2;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
            font-size: 14px;
            color: #333;
            background-color: #fff;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease;
        }
        form input[type="date"]:hover, form input[type="date"]:focus {
            border-color: #007bff;
            outline: none;
        }
        button {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <header>Hire Maid Report</header>
    <form method="post">
        <div class="date-fields">
            <div>
                <label for="startDate">Form Date:</label>
                <input type="date" id="startDate" name="startDate" required>
            </div>
            <div>
                <label for="endDate">To Date:</label>
                <input type="date" id="endDate" name="endDate" required>
            </div>
            <button type="submit">Generate Report</button>
        </div>
    </form>
    <% 
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");
            
            int totalHiredMaids = 0;
            Statement st = con.createStatement();
            String queryCount = "SELECT COUNT(*) FROM hire_maid WHERE hire_date BETWEEN '" + startDate + "' AND '" + endDate + "'";
            ResultSet rsCount = st.executeQuery(queryCount);
            if (rsCount.next()) {
                totalHiredMaids = rsCount.getInt(1);
            }
    %>
    <p>Total Maids Hired: <%= totalHiredMaids %></p>
    <table>
        <tr>
            <th>Booking ID</th>
            <th>Maid ID</th>
            <th>Maid Name</th>
            <th>Client Name</th>
            <th>Client Address</th>
            <th>Service Type</th>
            <th>Booking Date</th>
        </tr>
        <%
            String queryDetails = "SELECT * FROM hire_maid WHERE hire_date BETWEEN '" + startDate + "' AND '" + endDate + "'";
            ResultSet rsDetails = st.executeQuery(queryDetails);
            while (rsDetails.next()) {
                String booking_id = rsDetails.getString("booking_id");
                String maid_id = rsDetails.getString("maid_id");
                String m_name = rsDetails.getString("m_name");
                String client_name = rsDetails.getString("client_name");
                String client_address = rsDetails.getString("client_address");
                String service_type = rsDetails.getString("service_type");
                String hire_date = rsDetails.getString("hire_date");
        %>
        <tr>
            <td><%= booking_id %></td>
            <td><%= maid_id %></td>
            <td><%= m_name %></td>
            <td><%= client_name %></td>
            <td><%= client_address %></td>
            <td><%= service_type %></td>
            <td><%= hire_date %></td>
        </tr>
        <% } %>
    </table>
    <button onclick="window.location.href='ReportsIndex.jsp'">Back</button>
    <% } %>
</div>
</body>
</html>
