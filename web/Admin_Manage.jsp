<%-- 
    Document   : Admin_Manage
    Created on : 8 Feb 2025, 5:20:00 pm
    Author     : Hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maid Management System</title>
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
        header .nav h1 {
            margin: 0;
            font-size: 24px;
        }
         header .nav {
            margin-left: auto;
            color: white; 
            
        }
        .main-header {
            background-color: #87ceeb;
            color: black;
            font-size: 28px;
            text-align: center;
            padding: 15px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 15px;
            border-radius: 8px;
            max-width: 1600px;
            margin: 15px auto 0;
        }
        .services-box {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 40px;
            max-width: 1100px;
            margin: 0 auto;
        }
        .services {
            flex: 1 1 calc(22.5% - 20px); /* Adjusted the width to fit 4 buttons in a row */
            max-width: calc(22.5% - 20px);
            background: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 80px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 22px;
            text-align: center;
        }
        .services:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        .btn {
            height: 50px;
            width: 80%;
            border-radius: 8px;
            background-color: #4682b4;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            font-size: 20px;
            transition: background-color 0.3s ease;
            padding: 10px;
        }
        .btn:hover {
            background-color: #87ceeb;
            color: black;
        }
        .select {
            border: none;
            outline: none;
            background-color: transparent;
            cursor: pointer;
            color: inherit;
            font-size: 20px;
        }
        @media (max-width: 720px) {
            .services {
                flex: 1 1 calc(45% - 20px);
                max-width: calc(45% - 20px);
            }
        }
        @media (max-width: 420px) {
            .services {
                flex: 1 1 100%;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Maid Booking</h1>
        </div>
        <div class="nav">
            <a href="Admin_registration.jsp"><h1>New Admin</h1></a>  
            <a href="Admin_login.jsp"><h1>Logout</h1></a>      
        </div>
    </header>
    <div class="main-header">
        <h1>Maid Management System</h1>
    </div>
    <div class="services-box">
        <!-- First line with 4 buttons -->
        <div class="services">
            <a href="Admin_addmaid.jsp" class="btn select">Add Maid</a>
        </div>
        <div class="services">
            <a href="Admin_Viewmaid.jsp" class="btn select">View Maid</a>
        </div>
        <div class="services">
            <a href="Admin_checkbooking.jsp" class="btn select">Check Maid Booking</a>
        </div>
        <div class="services">
            <a href="Admin_Searchmaid.jsp" class="btn select">Search Maid</a>
        </div>
        <!-- Second line with 3 buttons -->
        <div class="services">
            <a href="Admin_Hiremaid.jsp" class="btn select">Hire Maid</a>
        </div>
        <div class="services">
            <a href="Admin_Remove.jsp" class="btn select">Remove Maid</a>
        </div>
        <div class="services">
            <a href="ReportsIndex.jsp" class="btn select">Reports</a>
        </div>
    </div>
</body>
</html>
