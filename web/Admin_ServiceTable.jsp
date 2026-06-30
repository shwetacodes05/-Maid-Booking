<%-- 
    Document   : Admin_ServiceTable
    Created on : 8 Feb 2025, 2:55:19 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <style>
        body {
            background-color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        header {
            background-color: #052433;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
        }
        header .logo h1 {
            margin: 0;
            font-size: 28px;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        nav ul li {
            margin-right: 20px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 20px;
            transition: color 0.3s ease;
        }
        nav ul li a:hover {
            color: #e74c3c;
        }
        .container {
            text-align: center;
            padding: 50px;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-block;
            width: 300px;  /* Increased width */
            height: 100px; /* Increased height */
            margin: 20px;
            padding: 20px;
            font-size: 24px;  /* Increased font size */
            font-weight: normal;  /* Normal text weight */
            text-transform: uppercase;  /* Uppercase text */
            background-color: hsl(204, 81%, 48%); /* Blue buttons */
            color: white; /* White text */
            text-align: center;
            text-decoration: none;
            line-height: 60px; /* Center text vertically */
            border: hsl(204, 81%, 48%);
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .btn:hover {
            background-color: hsl(34, 83%, 52%);
            color: white; /* Change text color on hover */
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Maid Booking </h1>
        </div>
        <nav>
            <ul>
                <li><a href="Admin_Homepage.jsp">Home</a></li>
                <li><a href="Admin_Services.jsp">Services</a></li>
                <li><a href="Admin_Feedback.jsp">Feedback</a></li>
                <li><a href="Admin_Aboutus.jsp">About Us</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <h1>Manage Services</h1>
        <div class="btn-container">
            <a href="Admin_clientEnq1.jsp" class="btn">Cooking Service</a>
            <a href="Admin_clientEnq2.jsp" class="btn">Floor Cleaning Service</a>
            <a href="Admin_clientEnq3.jsp" class="btn">Elder Care Service</a>
            <a href="Admin_clientEnq4.jsp" class="btn">Baby Care Service</a>
            <a href="Admin_clientEnq5.jsp" class="btn">Clothes Wash Service</a>
            <a href="Admin_clientEnq6.jsp" class="btn">Gardening Services</a>
        </div>
    </div>
</body>
</html>
