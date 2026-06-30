<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Remove Maid</title>
    <style>
        body {
            background-color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
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
       
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            margin: 30px auto; 
        }
        .form-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #444;
        }
        .btn {
            width: 80%;
            padding: 15px;
            margin: 10px 0;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-size: 16px;
            font-weight: bold;
        }
        .btn:hover {
            background-color: #2980b9;
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn-no {
            background-color: #e74c3c;
        }
        .btn-no:hover {
            background-color: #c0392b;
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
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
    <div class="form-container">
        <h2>Are you sure to remove the maid?</h2>
        <form action="Remove Process code.jsp" method="post">
            <input type="hidden" name="Maid_ID" value="<%= request.getParameter("Maid_ID") %>">
            <button type="submit" class="btn">Yes</button>
            <button type="button" class="btn btn-no" onclick="window.location.href='Admin_Remove.jsp';">No</button>
        </form>
    </div>

  
</body>
</html>
