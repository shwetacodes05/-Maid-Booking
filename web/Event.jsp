<%-- 
    Document   : Event
    Created on : 1 Feb 2025, 8:56:09 am
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client Inquiry Form</title>
    <style>
        body {
            background-color: #f0f8ff;
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

        .form-container {
            background-color: #fff;
            color: #333;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 30px auto; 
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
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        .form-container input,
        .form-container textarea {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ced4da;
            border-radius: 5px;
            background-color: #fff;
            color: #333;
            font-weight: normal;
        }

        .btn {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border: none;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .inline-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .inline-group label {
            font-weight: bold;
        }
        .inline-group input {
            width: 30%;
            padding: 10px;
            margin: 5px 0;
            border: 2px solid #ced4da;
            border-radius: 5px;
            background-color: #fff;
            color: #333;
            font-weight: normal;
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
                <li><a href="about.html">About Us</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
            </ul>
        </nav>
    </header>
    <div class="form-container">
        <h2>Client Inquiry</h2>
        <form id="clientForm">
            <%
                int i = 0;
                Statement st = con.createStatement();
                String str = "Select count(*) from event";
                ResultSet rs = st.executeQuery(str);
                if (rs.next()) {
                    i = rs.getInt(1);
                    i++;
                }
            %>
            <label for="clientid">Client ID:</label>
            <input type="text" name="clientid" id="clientid" value="<%= i %>" readonly="true" required>
            
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" placeholder="Your Name" required>
            
            <label for="email">Email-ID:</label>
            <input type="email" name="email" id="email" placeholder="Your Email" required>
            
            <label for="address">Address:</label>
            <input type="text" name="address" id="address" placeholder="Your Address" required>
            
            <label for="mobilenumber">Mobile Number:</label>
            <input type="tel" id="mobilenumber" name="mobilenumber" placeholder="Your Mobile Number" pattern="^[6-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>            
         
            <div class="inline-group">
                <label for="workingtime">Working Time:</label>
                <input type="time" name="workingtime" id="workingtime" required>
                
                <label for="duration">Duration:</label>
                <input type="text" name="duration" id="duration" placeholder="Duration In Hours" required>
            </div>
            
            <label for="hiringdate">Hiring Date:</label>
            <input type="date" name="hiringdate" id="hiringdate" placeholder="Maid Hire Date" required>
            
            <label for="occasiontype">Occasion Type:</label>
            <input type="text" name="occasiontype" id="occasiontype" placeholder="Name of Occasion" required>
            
            <button type="button" class="btn" onclick="validateForm()">Book Now</button>
            
            <%
                String clientid = request.getParameter("clientid");
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String mobilenumber = request.getParameter("mobilenumber");
                String workingtime = request.getParameter("workingtime");
                String duration = request.getParameter("duration");
                String hiringdate = request.getParameter("hiringdate");
                String occasiontype = request.getParameter("occasiontype");

                if (clientid != null && !clientid.isEmpty() && name != null && !name.isEmpty() && email != null && !email.isEmpty() && address != null && !address.isEmpty() && mobilenumber != null && !mobilenumber.isEmpty() && workingtime != null && !workingtime.isEmpty() && duration != null && !duration.isEmpty() && hiringdate != null && !hiringdate.isEmpty() && occasiontype != null && !occasiontype.isEmpty()) {
                    Statement st1 = con.createStatement();
                    String str1 = "insert into info.event(clientid, name, email, address, mobilenumber, workingtime, duration, hiringdate, occasiontype) values('" + clientid + "', '" + name + "', '" + email + "', '" + address + "', '" + mobilenumber + "', '" + workingtime + "', '" + duration + "', '" + hiringdate + "', '" + occasiontype + "')";
                    int a = st1.executeUpdate(str1);
                    if (a > 0) {
                        out.println("<script>alert('Data inserted successfully'); window.location.href='Pyment_Method.jsp';</script>");
                    }
                }
            %>
        </form>
    </div>
    <script>
        function validateForm() {
            var form = document.getElementById('clientForm');
            var clientid = document.getElementById('clientid').value;
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var address = document.getElementById('address').value;
            var mobile = document.getElementById('mobilenumber').value;
            var time = document.getElementById('workingtime').value;
            var duration = document.getElementById('duration').value;
            var hiringdate = document.getElementById('hiringdate').value;
            var occasiontype = document.getElementById('occasiontype').value;

            if (clientid === "" || name === "" || email === "" || address === "" || mobile === "" || time === "" || duration === "" || hiringdate === "" || occasiontype === "") {
                alert("All fields are required. Please fill up all fields.");
            } else {
                form.submit();
            }
        }
    </script>
</body>
</html>
