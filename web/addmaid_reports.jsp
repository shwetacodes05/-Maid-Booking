<%-- 
    Document   : AddMaidReports
    Created on : 23 Feb 2025, 4:55 pm
    Author     : Hp
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Maid Report</title>
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
             margin-top: 170px;
            
        }
        .container {
            margin-top: 40px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            width: 800px;
            text-align: center;
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
        form input[type="date"]:hover,
        form input[type="date"]:focus {
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
        <header>Add Maid Report</header>
        <form method="post">
            <div class="date-fields">
                <div>
                    <label for="fromDate">From Date:</label>
                    <input type="date" id="fromDate" name="fromDate" required>
                </div>
                <div>
                    <label for "toDate">To Date:</label>
                    <input type="date" id="toDate" name="toDate" required>
                </div>
                <button type="submit">Generate Report</button>
            </div>
        </form>
        <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String fromDate = request.getParameter("fromDate");
            String toDate = request.getParameter("toDate");

            int totalMaids = 0;
            try (Statement st = con.createStatement()) {
                String query = "SELECT COUNT(*) FROM add_maid WHERE maidadd_date BETWEEN '" + fromDate + "' AND '" + toDate + "'";
                try (ResultSet rs = st.executeQuery(query)) {
                    if (rs.next()) {
                        totalMaids = rs.getInt(1);
                    }
                }
            %>
            <p>Total Maids Added: <%= totalMaids %></p>
            <table>
                <tr>
                    <th>Maid ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Address</th>
                    <th>Designation</th>
                    <th>Working Duration (Hours)</th>
                    <th>Salary</th>
                    <th>Mobile Number</th>
                    <th>Added Date</th>
                </tr>
                <%
                String queryDetails = "SELECT * FROM add_maid WHERE maidadd_date BETWEEN '" + fromDate + "' AND '" + toDate + "'";
                try (ResultSet rsDetails = st.executeQuery(queryDetails)) {
                    while (rsDetails.next()) {
                        String Maid_ID = rsDetails.getString("Maid_ID");
                        String name = rsDetails.getString("name");
                        String dob = rsDetails.getString("dob");
                        String address = rsDetails.getString("address");
                        String designation = rsDetails.getString("designation");
                        String duration = rsDetails.getString("duration");
                        String salary = rsDetails.getString("salary");
                        String mobile_no = rsDetails.getString("mobile_no");
                        String maidadd_date = rsDetails.getString("maidadd_date");

                 %>
                <tr>
                    <td><%= Maid_ID %></td>
                    <td><%= name %></td>
                    <td><%= dob %></td>
                    <td><%= address %></td>
                    <td><%= designation %></td>
                    <td><%= duration %></td>
                    <td><%= salary %></td>
                    <td><%= mobile_no %></td>
                    <td><%= maidadd_date %></td>
                </tr>
                <%
                    }
                }
            }
        }
        %>
        </table>
        <button onclick="window.location.href='ReportsIndex.jsp'">Back</button>
    </div>
</body>
</html>
