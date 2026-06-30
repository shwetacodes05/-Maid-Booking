<%-- 
    Document   : Admin_registration
    Created on : 6 Feb 2025, 7:16:20 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <style>
        body {
            background-image: url(https://t3.ftcdn.net/jpg/02/07/14/32/360_F_207143275_BIaYKTqSNmEepkTJ7ngNptWjChJyKnBM.jpg);
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .container {
            background: rgba(255, 255, 255, 0.8); /* 80% opacity for transparency */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding : 30px;
            margin-top: 50px;
            margin-bottom: 50px;
            border-radius: 10px;
            width: 500px;
        }
        header {
            text-align: center;
            font-size: 40px;
            margin-bottom: 30px;
            color: #162938;
            height: 70px;
            background-color: rgba(214, 205, 203, 0.8); /* Added transparency */
            padding-top: 10px;
        }
        .registration-form {
            font-size: larger;
        }
        .registration-form label {
            display: block;
            margin-bottom: 10px;
            color: #162938;
        }
        .registration-form input {
            width: calc(100% - 20px);
            height: 30px;
            padding: 5px 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 15px;
            background-color: #162938;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 20px;
            cursor: pointer;
        }
        .login-register {
            text-align: center;
            margin-top: 10px;
        }
        .login-register a {
            color: #162938;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form>
        <div class="container">
            <header>Registration</header>
            <div class="registration-form">
                 <%
                int i=0;
                Statement st=con.createStatement();
                String str="Select count(*)from Admin_registration";
                ResultSet rs=st.executeQuery(str);
                if(rs.next())
                {
                    i = rs.getInt(1);
                    i++;
                }
                %>
                Admin ID:
                <input type="text" id="client_id" name="client_id"value="<%=i%>" readonly="true" required>

                Name:
                <input type="text" id="client_name" name="client_name" required>

                Username:
                <input type="text" id="cuser_name" name="cuser_name" required>

                Password:
                <input type="password" id="cpassword" name="cpassword" required>

                Email:
                <input type="email" id="email" name="email" required>

                Mobile Number:
                <input type="text" id="mobileno" name="mobileno" required>

                <button type="submit">Register</button>

                <div class="login-register">
                    <p>Already have an account? <a href="Login.jsp" class="register-link">Login</a></p>
                </div>
            </div>
        </div>
        <%--
          String client_id=request.getParameter("client_id");
          String client_name=request.getParameter("client_name");
          String cuser_name=request.getParameter("cuser_name");
          String cpassword=request.getParameter("cpassword");
          String email=request.getParameter("email");
          String mobileno=request.getParameter("mobileno");
          Statement st=con.createStatement();
          if(client_id!=null && !client_id.isEmpty() && client_name!=null && !client_name.isEmpty() && cuser_name!=null && !cuser_name.isEmpty() && cpassword!=null && !cpassword.isEmpty() && email!=null && !email.isEmpty() && mobileno!=null && !mobileno.isEmpty())
         {
            String str = "insert into info.client_registration(client_id, client_name, cuser_name, cpassword, email, mobileno) values('" + client_id + "', '" + client_name + "', '" + cuser_name + "', '" + cpassword + "', '" + email + "', '" + mobileno + "')";
            int a=st.executeUpdate(str);
            if (a > 0) {
                out.println("<script>alert('Your Registration is Successful'); window.location.href='Login.jsp';</script>");
            }
         }
        --%>
    </form>
</body>
</html>
