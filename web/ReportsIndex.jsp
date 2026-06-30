<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Maids</title>
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
            flex: 1 1 calc(30% - 20px);
            max-width: calc(30% - 20px);
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
    </header>
    <div class="main-header">
        <h1>Manage Reports</h1>
    </div>
    <div class="services-box">
        <div class="services">
            <a href="RegistrationReport.jsp" class="btn select"> Client Registration</a>
        </div>
        <div class="services">
            <a href="PymentReports.jsp" class="btn select">Client Payment</a>
        </div>
        <div class="services">
            <a href="FeedBackReport.jsp" class="btn select">Client Feedback</a>
        </div>
        <div class="services">
            <a href="addmaid_reports.jsp" class="btn select">Maid Details</a>
        </div>
        <div class="services">
            <a href="HireMaidReports.jsp" class="btn select">Hire Maid</a>
        </div>
    </div>
</body>
</html>
