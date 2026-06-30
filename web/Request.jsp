<%-- 
    Document   : Admin_Hiremaid
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
        <form action="Admin_Manage.jsp" method="post">
            <label for="m_name">Maid Name:</label>
            <select id="m_name" name="m_name" required>
                <option value="" disabled selected>Select Maid</option>
                <%
                    try {
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT name FROM add_maid");
                        boolean hasResults = false;
                        while (rs.next()) {
                            hasResults = true;
                            String maidName = rs.getString("name");
                            out.println("<option value='" + maidName + "'>" + maidName + "</option>");
                        }
                        if (!hasResults) {
                            out.println("<option disabled>No maids available</option>");
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
                <input type="submit" value="Submit">          
            </div>
            
            <%
                String m_name = request.getParameter("m_name");
                String client_name = request.getParameter("client_name");
                String service_type = request.getParameter("service_type");

                if (m_name != null && !m_name.isEmpty() && client_name != null && !client_name.isEmpty() && service_type != null && !service_type.isEmpty()) {
                    try {
                        Statement st1 = con.createStatement();
                        String str1 = "INSERT INTO hire_maid (m_name, client_name, service_type) VALUES ('" + m_name + "', '" + client_name + "', '" + service_type + "')";
                        int a = st1.executeUpdate(str1);
                        if (a > 0) {
                            out.println("<script>alert('Hired maid successfully'); window.location.href='Admin_Manage.jsp';</script>");
                        }
                    } catch (SQLException e) {
                        out.println("<script>alert('Data insertion failed: " + e.getMessage() + "'); window.location.href='Admin_Manage.jsp';</script>");
                    }
                }
            %>
        </form>
    </div>
</body>
</html>
