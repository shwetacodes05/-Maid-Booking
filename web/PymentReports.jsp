<%-- 
    Document   : PaymentReports
    Created on : 21 Feb 2025, 4:43:51 pm
    Author     : Hp
--%>

<%@ include file="Connection.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Report</title>
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
            margin-top: 180px;
        }
        .container {
            margin-top: 40px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            width: 900px;
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
        <header>Payment Report</header>
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

            int totalPayments = 0;
            Statement st = con.createStatement();
            String query = "SELECT COUNT(*) FROM info.payment WHERE paymentdate BETWEEN '" + fromDate + "' AND '" + toDate + "'";
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) {
                totalPayments = rs.getInt(1);
            }
        %>
        <p>Total Payments Recorded: <%= totalPayments %></p>

        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile Number</th>
                <th>Cardholder Name</th>
                <th>Card Number</th>
                <th>CVV</th>
                <th>Payment Date</th>
            </tr>
            <%
            query = "SELECT * FROM info.payment WHERE paymentdate BETWEEN '" + fromDate + "' AND '" + toDate + "'";
            rs = st.executeQuery(query);
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String mobileNumber = rs.getString("mobilenumber");
                String cardholder = rs.getString("cardholder");
                String cardNumber = rs.getString("cardnumber");
                String cvv = rs.getString("cvv");
                String paymentDate = rs.getString("paymentdate");
            %>
            <tr>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= mobileNumber %></td>
                <td><%= cardholder %></td>
                <td><%= cardNumber %></td>
                <td><%= cvv %></td>
                <td><%= paymentDate %></td>
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
