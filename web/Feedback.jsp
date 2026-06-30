<%-- 
    Document : Feedback 
    Created on : 2 Feb 2025, 1:51:43 pm 
    Author : Hp 
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
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
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 20px auto;
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
            color: #333;
        }
        .form-container input,
        .form-container textarea,
        .form-container select {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ced4da;
            border-radius: 5px;
            background-color: #fff;
            color: #333;
        }
        .form-container input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border: none;
            padding: 10px 20px;
            font-size: larger;
            display: block;
            margin: 20px auto;
            text-align: center;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .form-container input[type="submit"]:hover {
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
                <li><a href="Aboutus.jsp">About Us</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
            </ul>
        </nav>
    </header>
    <div class="form-container">
        <h2>Feedback Form</h2>
        <form>
            <%
                int i = 0;
                Statement st = con.createStatement();
                String str = "Select count(*) from feedback";
                ResultSet rs = st.executeQuery(str);
                if (rs.next()) {
                    i = rs.getInt(1);
                    i++;
                }
            %>
            <label for="clientid">Client ID:</label>
            <input type="text" name="clientid" id="clientid" value="<%= i %>" readonly="true" required>
            
            <label for="feedbackdate">Date:</label>
            <input type="date" name="feedbackdate" id="feedbackdate" placeholder="Enter Today's Date" required>
            
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" placeholder="Your Name" required>
            
            <label for="email">Email-ID:</label>
            <input type="email" name="email" id="email" placeholder="Your Email" required>
            
            <label for="mobilenumber">Mobile Number:</label>
            <input type="tel" id="mobilenumber" name="mobilenumber" placeholder="Your Mobile Number" pattern="^[7-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>            
            
            <label for="rating">Rating:</label>
            <select name="rating" id="rating" required>
                <option value="" disabled selected>Select your rating</option>
                <option value="Excellent">Excellent</option>
                <option value="Good">Good</option>
                <option value="Average">Average</option>
                <option value="Below Average">Below Average</option>
                <option value="Poor">Poor</option>
            </select>
            
            <label for="comments">Comments:</label>
            <textarea name="comments" id="comments" placeholder="Your Comments" rows="4" required></textarea>
            
            <input type="submit" value="Submit Feedback">
            <%
                String clientid = request.getParameter("clientid");
                String feedbackdate = request.getParameter("feedbackdate");
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String mobilenumber = request.getParameter("mobilenumber");
                String rating = request.getParameter("rating");
                String comments = request.getParameter("comments");

                if (clientid != null && !clientid.isEmpty() && feedbackdate != null && !feedbackdate.isEmpty() && name != null && !name.isEmpty() && email != null && !email.isEmpty() && mobilenumber != null && !mobilenumber.isEmpty() && rating != null && !rating.isEmpty() && comments != null && !comments.isEmpty()) {
                    Statement st1 = con.createStatement();
                    String str1 = "insert into info.feedback(clientid, feedbackdate, name, email, mobilenumber, rating, comments) values('" + clientid + "', '" + feedbackdate + "', '" + name + "', '" + email + "', '" + mobilenumber + "', '" + rating + "', '" + comments + "')";
                    int a = st1.executeUpdate(str1);
                    if (a > 0) {
                        out.println("<script>alert('Feedback sent successfully'); window.location.href='Home_page.jsp';</script>");
                    }
                }
            %>
        </form>
    </div>
</body>
</html>
