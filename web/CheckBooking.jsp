<%-- 
    Document   : PaymentReceipt
    Created on : 8 Feb 2025, 5:02:05 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Receipt</title>
    <style>
        body {
            background-color: #f5f5f5;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .receipt-container {
            background-color: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 40px auto;
        }
        .receipt-container h2 {
            height: 80px;
            font-size: 40px;
            text-align: center;
            margin-top: 5px;
            padding-top: 40px;
            background-color: #f8d7da;
            color: #721c24;
        }
        .receipt-container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .receipt-container table, th, td {
            border: 1px solid black;
        }
        .receipt-container th, td {
            padding: 10px;
            text-align: left;
        }
        .print-button {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 20px;
        }
        .print-button button {
            padding: 10px 20px;
            font-size: 18px;
            color: #fff;
            background-color: blue;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .print-button button:hover {
            background-color: #4169e1;
        }
    </style>
    <script>
        function printReceipt() {
            window.print();
        }
    </script>
</head>
<body>
    <div class="receipt-container">
        <h2>Payment Receipt</h2>
       <%
    String name = request.getParameter("name"); // Assuming you pass the name to this page

    try {
        Statement stmt = con.createStatement();
        String query;
        
        // Check if the name parameter is provided
        if (name == null || name.isEmpty()) {
            // If no name is provided, query for the cardholder's name instead
            query = "SELECT * FROM info.payment WHERE cardholder IS NOT NULL LIMIT 1";
        } else {
            // If name is provided, query for the provided name
            query = "SELECT * FROM info.payment WHERE name='" + name + "'";
        }

        ResultSet rs = stmt.executeQuery(query);

        if (rs.next()) {
            out.println("<table>");
            out.println("<tr><th>Date</th><td>" + rs.getString("paymentdate") + "</td></tr>");
            out.println("<tr><th>Name</th><td>" + rs.getString("name") + "</td></tr>");
            out.println("<tr><th>Email</th><td>" + rs.getString("email") + "</td></tr>");
            out.println("<tr><th>Mobile Number</th><td>" + rs.getString("mobilenumber") + "</td></tr>");
            out.println("<tr><th>Cardholder Name</th><td>" + rs.getString("cardholder") + "</td></tr>");
            out.println("<tr><th>Card Number</th><td>**** **** **** " + rs.getString("cardnumber").substring(rs.getString("cardnumber").length() - 4) + "</td></tr>");
            out.println("<tr><th>Expiry Month</th><td>" + rs.getString("expirymonth") + "</td></tr>");
            out.println("<tr><th>Expiry Year</th><td>" + rs.getString("expiryyear") + "</td></tr>");
            out.println("<tr><th>CVV</th><td>***</td></tr>");
            out.println("</table>");
        } else {
            out.println("<p>No payment details found for the given name or cardholder.</p>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

        <div class="print-button">
            <button onclick="printReceipt()">Print Receipt</button>
        </div>
    </div>
</body>
</html>
