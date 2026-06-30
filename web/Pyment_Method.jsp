<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Method Form</title>
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
        .btn-cash {
            background-color: #2ecc71;
        }
        .btn-cash:hover {
            background-color: #27ae60;
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
        <nav>
            <ul>
                <li><a href="Main_Homepage.jsp">Home</a></li>
                <li><a href="Services.jsp">Services</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
                <li><a href="Aboutus.jsp">About Us</a></li>
            </ul>
        </nav>
    </header>
    <div class="form-container">
        <h2>Select Payment Method</h2>
        <form id="paymentMethodForm">
            <button type="button" class="btn" onclick="onlinePayment()">Online Payment</button>
            <button type="button" class="btn btn-cash" onclick="cashOnDelivery()">By Hand Cash</button>
        </form>
    </div>

   <script>
        function onlinePayment() {
            window.location.href = "Payment.jsp"; 
        }

        function cashOnDelivery() {
            window.location.href = "Home_page.jsp"; 
        }
    </script>
</body>
</html>
