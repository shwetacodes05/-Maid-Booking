<%-- 
    Document   : Admin_Remove
    Created on : 8 Feb 2025, 5:14:57 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remove Maid Details</title>
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
        
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .form-container {
            background-color: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: 20px 0;
        }
        .form-container h2 {
            font-size: 30px;
            text-align: center;
            margin-top: 0;
            padding-bottom: 20px;
            color: #052433;
        }
        .form-container input,
        .form-container textarea,
        .form-container select {
            width: 100%; 
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            color: #333;
        }
        .form-container input[type="submit"] {
            background-color: #1e90ff;
            color: #fff;
            cursor: pointer;
            border: none;
            padding: 15px;
            font-size: 16px;
            text-align: center;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .form-container input[type="submit"]:hover {
            background-color: #4169e1;
        }
        .button {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
        }
        .button a, .button input {
            flex: 1;
            margin: 0 10px;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
        }
        .button a {
            background-color: #1e90ff;
            transition: background-color 0.3s ease;
        }
        .button a:hover {
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
    <div class="container">
        <div class="form-container">
            <h2>Remove Maid Details</h2>
            <form action="RemoveSure.jsp" method="post">
                Maid ID:
                <input type="num" name="Maid_ID" id="Maid_ID" placeholder="Enter the Maid ID" required>
                <div class="button">  
                    <a href="Admin_Manage.jsp">Back</a> 
                    <input type="submit" value="Remove Maid"> 
                </div>
            </form>
        </div>
    </div>
</body>
</html>
