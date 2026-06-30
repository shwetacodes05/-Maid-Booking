<%@ include file="Connection.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client Registration Report</title>
    <style>
        body {
            background-color: #f0f8ff;
            background-image: url('background.jpg');
            background-size: cover;
            background-position: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin-top: 100px;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
            border-radius: 12px;
            width: 700px;
            text-align: center;
        }
        header {
            font-size: 26px;
            color: #007bff;
            font-weight: bold;
            border-bottom: 3px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #007bff;
        }
        th, td {
            padding: 12px;
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
        <header>Client Registration Report</header>
        <form method="post">
            <div class="date-fields">
                <div>
                    <label for="fromDate">From Date:</label>
                    <input type="date" id="fromDate" name="fromDate" required>
                </div>
                <div>
                    <label for="toDate">To Date:</label>
                    <input type="date" id="toDate" name="toDate" required>
                </div>
                <button type="submit">Generate Report</button>
            </div>
        </form>
        <% 
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String fromDate = request.getParameter("fromDate");
            String toDate = request.getParameter("toDate");

            int totalClients = 0;
            Statement st = con.createStatement();
            String query = "SELECT COUNT(*) FROM client_registration WHERE registrationdate BETWEEN '" + fromDate + "' AND '" + toDate + "'";
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) {
                totalClients = rs.getInt(1);
            }
        %>
        <p>Total Clients Registered: <%= totalClients %></p>
        <table>
            <tr>
                <th>Client ID</th>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
                <th>Mobile Number</th>
            </tr>
            <%
            String queryDetails = "SELECT * FROM client_registration WHERE registrationdate BETWEEN '" + fromDate + "' AND '" + toDate + "'";
            ResultSet rsDetails = st.executeQuery(queryDetails);
            while (rsDetails.next()) {
                String clientId = rsDetails.getString("client_id");
                String clientName = rsDetails.getString("client_name");
                String userName = rsDetails.getString("cuser_name");
                String email = rsDetails.getString("email");
                String mobileNo = rsDetails.getString("mobileno");
            %>
            <tr>
                <td><%= clientId %></td>
                <td><%= clientName %></td>
                <td><%= userName %></td>
                <td><%= email %></td>
                <td><%= mobileNo %></td>
            </tr>
            <%
            }
        }
        %>
        </table>
        <button onclick="window.location.href='ReportsIndex.jsp'">Back</button>
    </div>
</body>
</html>
