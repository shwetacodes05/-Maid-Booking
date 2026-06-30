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
            color: #e74c3c; /* Change color on hover */
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
            font-size: 40px;
            text-align: center;
            background-color: #f8d7da;
            color: #721c24;
            padding: 20px;
        }
        .form-container label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        .form-container input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ced4da;
            border-radius: 5px;
        }
        .btn {
            width: 90%;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border: none;
        }
        .btn:hover {
            background-color: #0056b3;
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
        <h2>Client Inquiry</h2>
        <form method="POST">
            <h3>Selected service is Gardening</h3>
            <%
                int i = 0;
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM client_enquiry1");
                if (rs.next()) {
                    i = rs.getInt(1) + 1;
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
            <input type="tel" id="mobilenumber" name="mobilenumber" placeholder="Your Mobile Number" pattern="^[7-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>            
            
            <div class="inline-group">
                <label for="workingtime">Working Time:</label>
                <input type="time" name="workingtime" id="workingtime" required>
                <label for="duration">Duration:</label>
                <input type="text" name="duration" id="duration" placeholder="Duration In Hours" required>
            </div>
            
            <label for="hiringdate">Hiring Date:</label>
            <input type="date" name="hiringdate" id="hiringdate" placeholder="Maid Hire Date" required>
            
            <label for="gardeningtype">Gardening Type:</label>
            <input type="text" name="gardeningtype" id="gardeningtype" placeholder="Gardening Type" required>
            
            <label for="gardensize">Garden Size:</label>
            <input type="text" name="gardensize" id="gardensize" placeholder="Garden Size" required>
            
            <button type="submit" class="btn">Book Now</button>

            <%
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    String clientid = request.getParameter("clientid");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String address = request.getParameter("address");
                    String mobilenumber = request.getParameter("mobilenumber");
                    String workingtime = request.getParameter("workingtime");
                    String duration = request.getParameter("duration");
                    String hiringdate = request.getParameter("hiringdate");
                    String gardeningtype = request.getParameter("gardeningtype");
                    String gardensize = request.getParameter("gardensize");  

                    if (clientid != null && name != null && email != null && address != null && 
                        mobilenumber != null && workingtime != null && duration != null && 
                        hiringdate != null && gardeningtype != null && gardensize != null) {

                        try {
                            String query = "INSERT INTO client_enquiry6 (clientid, name, email, address, mobilenumber, workingtime, duration, hiringdate, gardeningtype, gardensize) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                            PreparedStatement pst = con.prepareStatement(query);
                            pst.setInt(1, Integer.parseInt(clientid));
                            pst.setString(2, name);
                            pst.setString(3, email);
                            pst.setString(4, address);
                            pst.setString(5, mobilenumber);
                            pst.setString(6, workingtime);
                            pst.setString(7, duration);
                            pst.setString(8, hiringdate);
                            pst.setString(9, gardeningtype);
                            pst.setString(10, gardensize);
                            
                            int inserted = pst.executeUpdate();
                            if (inserted > 0) {
                                response.sendRedirect("Pyment_Method.jsp");
                            }
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    } else {
                        out.println("Please fill in all fields.");
                    }
                }
            %>
        </form>
    </div>
</body>
</html>
