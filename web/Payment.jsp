<%-- 
    Document   : Payment
    Created on : 2 Feb 2025, 1:53:38 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment form</title>
    <style>
        body {
            background-color: #f5f5f5;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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
            color: #e74c3c; /* Change color on hover */
        }
        .form-container {
            background-color: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 40px auto;
        }
        .form-container h2 {
            height: 80px;
            font-size: 40px;
            text-align: center;
            margin-top: 5px;
            padding-top: 40px;
            background-color: #f8d7da;
            color: #721c24;
       
        }
        .form-container label {
            font-weight: bold; /* Make label fonts bold */
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
            padding: 10px 20px;
            font-size: larger;
            margin: 20px 0;
        }
        .form-container input[type="submit"]:hover {
            background-color: #4169e1;
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
                <li><a href="about.html">About Us</a></li>
            </ul>
        </nav>
    </header>
    <div class="form-container">
        <h2>Payment</h2>
        <form>
            <label for="name">Date:</label>
            <input type="date" name="paymentdate" id="paymentdate" placeholder="Enter Your Name" required>
            
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" placeholder="Enter Your Name" required>
            
            <label for="mobilenumber">Mobile Number:</label>
            <input type="tel" id="mobilenumber" name="mobilenumber" placeholder="Your Mobile Number" pattern="^[7-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>           
            
            <label for="email">Email-ID:</label>
            <input type="email" name="email" id="email" placeholder="Enter Your Email-ID" required>
           
            <label for="cardholder">Cardholder Name:</label>
            <input type="text" name="cardholder" id="cardholder" placeholder="Cardholder Name" required><br>
            
            <label for="cardnumber">Card Number:</label>
            <input type="text" name="cardnumber" id="cardnumber" placeholder="Card Number" pattern="\d{15,16}" minlength="15" maxlength="16" required>
            
            <label for="expirymonth">Expiry Month:</label>
            <select name="expirymonth" id="expirymonth" required>
                <option value="" disabled selected>Month</option>
                <option value="01">January</option>
                <option value="02">February</option>
                <option value="03">March</option>
                <option value="04">April</option>
                <option value="05">May</option>
                <option value="06">June</option>
                <option value="07">July</option>
                <option value="08">August</option>
                <option value="09">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
            </select><br>
            
            <label for="expiryyear">Expiry Year:</label>
            <select name="expiryyear" id="expiryyear" required>
                <option value="" disabled selected>Year</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2029">2029</option>
            </select><br>
           
            <label for="cvv">CVV:</label>
            <input type="text" name="cvv" id="cvv" placeholder="CVV" pattern="\d{3,4}" minlength="3" maxlength="4" required>
            
            <input type="submit" value="Submit Payment">
             
            <%
                String paymentdate = request.getParameter("paymentdate");
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String mobilenumber = request.getParameter("mobilenumber");
                String cardholder = request.getParameter("cardholder");
                String cardnumber = request.getParameter("cardnumber");
                String expirymonth = request.getParameter("expirymonth");
                String expiryyear = request.getParameter("expiryyear");
                String cvv = request.getParameter("cvv");

                if (paymentdate != null && !paymentdate.isEmpty() && name != null && !name.isEmpty() && email != null && !email.isEmpty() && mobilenumber != null && !mobilenumber.isEmpty() && cardholder != null && !cardholder.isEmpty() && cardnumber != null && !cardnumber.isEmpty() && expirymonth != null && !expirymonth.isEmpty() && expiryyear != null && !expiryyear.isEmpty() && cvv != null && !cvv.isEmpty()) {
                    Statement st1 = con.createStatement();
                    String str1 = "insert into info.payment(paymentdate, name, email, mobilenumber, cardholder, cardnumber, expirymonth, expiryyear, cvv) values('" + paymentdate + "', '" + name + "', '" + email + "', '" + mobilenumber + "', '" + cardholder + "', '" + cardnumber + "', '" + expirymonth + "', '" + expiryyear + "', '" + cvv + "')";
                    int a = st1.executeUpdate(str1);
                    if (a > 0) {
                        out.println("<script>alert('Payment done successfully'); window.location.href='CheckBooking.jsp';</script>");
                    }
                }
            %>
        </form>
    </div>
</body>
</html>
