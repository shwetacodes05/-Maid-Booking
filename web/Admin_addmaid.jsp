<%-- 
    Document   : Admin_addmaid
    Created on : 8 Feb 2025, 4:56:42 pm
    Author     : Hp
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add_Maid</title>
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
            font-size: 15px;
            text-align: center;
            padding: 3px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 10px;
            border-radius: 3px;
            max-width: 680px;
            margin: 15px auto 0;
        }
        .content {
            max-width: 650px;
            margin: 15px auto;
            padding: 15px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-size: 18px;
            font-weight: bold;
        }
        input, select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
         .button {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
            width: 350px;
            margin-left: 150px;
            margin-right: 150px;
        }
        .button a, .button input {
           
            flex: 1;
            margin: 0 10px;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            background-color: blue;
            transition: background-color 0.3s ease;
        }
        .button a:hover, .button input:hover {
            background-color: #4169e1;
        }
    </style>
</head>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Maid Booking</h1>
        </div>
    </header>
    <div class="main-header">
        <h1>Add Maid</h1>
    </div>
    <div class="content">
        <form>
            <%
                int i = 0;
                try {
                    Statement st = con.createStatement();
                    String str = "SELECT COUNT(*) FROM add_maid";
                    ResultSet rs = st.executeQuery(str);
                    if (rs.next()) {
                        i = rs.getInt(1);
                        i++;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
             %>
            Maid_ID:
            <input type="num" name="Maid_ID" id="Maid_ID"value="<%= i %>" readonly="true" placeholder="Enter the Maid_ID" required>
      
            <label for="maid_name">Date:</label>
            <input type="date" id="maidadd_date" name="maidadd_date" required>
            
            <label for="maid_name">Maid Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="maid_dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>
            
            <label for="maid_add">Address:</label>
            <input type="text" id="address" name="address" required>
            
            <label for="maid_designation">Designation:</label>
            <input type="text" id="designation" name="designation" required>
            
            <label for="maid_wd">Working Duration In Hours:</label>
            <input type="text" id="duration" name="duration" required>
            
            <label for="maid_salary">Salary:</label>
            <input type="num" id="salary" name="salary" required>

            <label for="mobileno">Mobile Number:</label>
            <input type="text" id="mobileno" name="mobileno"  pattern="^[6-9]\d{9}$" minlength="10" maxlength="10" title="Enter a valid number" required>                
            
            <label for="Aadhar_no">Aadhaar No:</label>
            <input type="text" id="aadhar_no" name="aadhar_no" pattern="\d{12}" minlength="12" maxlength="12" required>

            <div class="button"> 
                <a href="Admin_Manage.jsp">Back</a> 
                <input type="submit" value="Add Maid Detail"> 
            </div>
               </div>
            
            <%
                String Maid_ID = request.getParameter("Maid_ID");
                String maidadd_date = request.getParameter("maidadd_date");
                String name = request.getParameter("name");
                String dob = request.getParameter("dob");
                String address = request.getParameter("address");
                String designation = request.getParameter("designation");
                String duration = request.getParameter("duration");
                String salary = request.getParameter("salary");
                String mobile_no = request.getParameter("mobileno");
                String aadhar_no = request.getParameter("aadhar_no");

                if (Maid_ID != null && !Maid_ID.isEmpty() && maidadd_date != null && !maidadd_date.isEmpty() && name != null && !name.isEmpty() && dob != null && !dob.isEmpty() && 
                    address != null && !address.isEmpty() && designation != null && !designation.isEmpty() && 
                    duration != null && !duration.isEmpty() && salary != null && !salary.isEmpty() && mobile_no != null && !mobile_no.isEmpty() && aadhar_no != null && !aadhar_no.isEmpty()) {
                    
                    try {
                        Statement st1 = con.createStatement();
                        String str1 = "INSERT INTO add_maid (Maid_ID, maidadd_date, name, dob, address, designation, duration, salary, mobile_no, aadhar_no) VALUES ('" + Maid_ID + "', '" + maidadd_date + "', '" + name + "', '" + dob + "', '" + address + "', '" + designation + "', '" + duration + "', '" + salary + "', '" + mobile_no + "', '" + aadhar_no + "')";
                        System.out.println("Executing query: " + str1); // Debug line
                        int a = st1.executeUpdate(str1);
                        if (a > 0) {
                            out.println("<script>alert('Data inserted successfully'); window.location.href='Admin_addmaid.jsp';</script>");
                        } else {
                            out.println("<script>alert('Data insertion failed'); window.location.href='Admin_addmaid.jsp';</script>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<script>alert('Error: " + e.getMessage() + "'); window.location.href='Admin_addmaid.jsp';</script>");
                    }
                }
            %>
        </form>
    </div>
</body>
</html>
