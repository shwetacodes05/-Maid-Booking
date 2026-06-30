<%-- 
    Document   : Registration
    Created on : 2 Feb 2025, 11:33:44 pm
    Author     : Hp
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            margin-top: 100px;
            margin-bottom: 100px;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
        }
        header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="date"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="text"][readonly] {
            background-color: #e9e9e9;
        }
        button[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
        }
        .login-register {
            text-align: center;
            margin-top: 20px;
        }
        .register-link {
            color: #4CAF50;
            text-decoration: none;
        }
        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form method="post" action="Registration.jsp">
        <div class="container">
            <header>
                <h1>Registration</h1>
            </header>
            <div class="registration-form">
                <%
                int i = 0;
                Statement st = con.createStatement();
                String str = "SELECT MAX(client_id) FROM client_registration";
                ResultSet rs = st.executeQuery(str);
                if (rs.next()) {
                    i = rs.getInt(1);
                    i++;
                }
                %>
                <label for="client_id">Client ID:</label>
                <input type="text" id="client_id" name="client_id" value="<%= i %>" readonly="true" required>

                <label for="registrationdate">Registration Date:</label>
                <input type="date" id="registrationdate" name="registrationdate" required>

                <label for="client_name">Name:</label>
                <input type="text" id="client_name" name="client_name" required>

                <label for="cuser_name">Username:</label>
                <input type="text" id="cuser_name" name="cuser_name" required>

                <label for="cpassword">Password:</label>
                <input type="password" id="cpassword" name="cpassword" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>

                <label for="mobilenumber">Mobile Number:</label>
                <input type="tel" id="mobilenumber" name="mobilenumber" placeholder="Your Mobile Number" pattern="^[7-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>                
               
                <button type="submit">Register</button>

                <div class="login-register">
                    <p>Already have an account? <a href="Login.jsp" class="register-link">Login</a></p>
                </div>
                <%
                String client_id = request.getParameter("client_id");
                String registrationdate = request.getParameter("registrationdate");
                String client_name = request.getParameter("client_name");
                String cuser_name = request.getParameter("cuser_name");
                String cpassword = request.getParameter("cpassword");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String mobilenumber = request.getParameter("mobilenumber");

                Statement st1 = con.createStatement();
                if (client_name != null && !client_name.isEmpty() && address != null && !address.isEmpty() && mobilenumber != null && !mobilenumber.isEmpty() && email != null && !email.isEmpty() && cuser_name != null && !cuser_name.isEmpty() && cpassword != null && !cpassword.isEmpty()) {
                    String str1 = "INSERT INTO client_registration (client_id, client_name, cuser_name, cpassword, email, address, mobileno, registrationdate) VALUES ('" + client_id + "', '" + client_name + "', '" + cuser_name + "', '" + cpassword + "', '" + email + "', '" + address + "', '" + mobilenumber + "', '" + registrationdate + "')";
                    int a = st1.executeUpdate(str1);
                    if (a > 0) {
                        out.println("<script>alert('Your Registration is Successful'); window.location.href='Login.jsp';</script>");
                    }
                }
                %>
            </div>
        </div>
       
    </form>
</body>
</html>
