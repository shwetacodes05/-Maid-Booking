<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Connection.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hire Maid</title>
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
            font-size: 15px;
            text-align: center;
            padding: 3px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            border-radius: 3px;
            max-width: 680px;
            margin: 15px auto 0;
        }
        .content {
            max-width: 650px;
            margin: 15px auto;
            padding: 15px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-size: 18px;
            font-weight: bold;
        }
        input, select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .button {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
            width: 350px;
            margin-left: 150px;
            margin-right: 150px;
        }
        .button a, .button input {
            flex: 1;
            margin: 0 10px;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            background-color: blue;
            transition: background-color 0.3s ease;
        }
        .button a:hover, .button input:hover {
            background-color: #4169e1;
        }
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        .button-container {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 20px;
        }
        .button-container a {
            padding: 10px 20px;
            font-size: 18px;
            color: #fff;
            background-color: blue;
            text-decoration: none;
            border-radius: 5px;
        }
        .button-container a:hover {
            background-color: #4169e1;
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
        <h1>Hire Maid</h1>
    </div>
    <div class="content">
        <%
            // Retrieve form data
            String m_name = request.getParameter("m_name");
            String client_name = request.getParameter("client_name");
            String service_type = request.getParameter("service_type");

            // Check if form data is not null and not empty
            if (m_name != null && !m_name.isEmpty() && client_name != null && !client_name.isEmpty() && service_type != null && !service_type.isEmpty()) {
                try {
                    // Insert form data into hire_maid table
                    Statement st1 = con.createStatement();
                    String str1 = "INSERT INTO hire_maid (m_name, client_name, service_type) VALUES ('" + m_name + "', '" + client_name + "', '" + service_type + "')";
                    int a = st1.executeUpdate(str1);
                    if (a > 0) {
                        out.println("<div class='success-message'>Maid has been hired successfully!</div>");
                        out.println("<table>");
                        out.println("<tr><th>Client Name</th><td>" + client_name + "</td></tr>");
                        out.println("<tr><th>Maid Name</th><td>" + m_name + "</td></tr>");
                        out.println("<tr><th>Service Type</th><td>" + service_type + "</td></tr>");
                        out.println("</table>");
                        out.println("<div class='button-container'><a href='Admin_Manage.jsp'>Back</a></div>");
                    }
                } catch (SQLException e) {
                    out.println("<div class='success-message'>Data insertion failed: " + e.getMessage() + "</div>");
                }
            } else {
        %>
        <form action="Admin_Hiremaid.jsp" method="post">
            <label for="m_name">Maid Name:</label>
            <select id="m_name" name="m_name" required>
                <option value="" disabled selected>Select Maid</option>
                <%
                    // Fetch maid names from the database
                    try {
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT name FROM add_maid");
                        while (rs.next()) {
                            String maidName = rs.getString("name");
                            out.println("<option value='" + maidName + "'>" + maidName + "</option>");
                        }
                    } catch (SQLException e) {
                        out.println("<option disabled>Error: " + e.getMessage() + "</option>");
                    }
                %>
            </select>
            
            <label for="client_name">Client Name:</label>
            <select id="client_name" name="client_name" required>
                <option value="" disabled selected>Select Client</option>
                <%
                    // Fetch client names from the database
                    try {
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT client_name FROM client_registration");
                        while (rs.next()) {
                            String clientName = rs.getString("client_name");
                            out.println("<option value='" + clientName + "'>" + clientName + "</option>");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </select>

            <label for="service_type">Service Type:</label>
            <select id="service_type" name="service_type" required>
                <option value="cooking">Cooking</option>
                <option value="floor_cleaning">Floor Cleaning</option>
                <option value="elder_care">Elder Care</option>
                <option value="Baby_care">Baby Care</option>
                <option value="clothes_wash">Clothes Wash</option>
                <option value="gardening">Gardening</option>
            </select>

            <div class="button">
                <a href="Admin_Manage.jsp">Back</a>
                <input type="submit" value="Hire Maid">
            </div>
        </form>
        <%
            }
        %>
    </div>
</body>
</html>
