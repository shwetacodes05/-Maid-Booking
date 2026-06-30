<%-- 
    Document   : Services
    Created on : 31 Jan 2025, 10:47:47 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #f4f4f4;
        }
        .services-header {
            text-align: center;
        }
        header {
            width: 100%;
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

        .main-header {
            height: 40px;
            width: 100%;
            padding: 20px;
            background-color: hsl(204, 81%, 48%);
            text-align: center;
            color: white;
            font-size: 30px;
            margin-top: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .services-box {
            padding: 0 10px 30px 10px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            margin-left: 70px;
        }
        
        .services-box2 {
            padding: 0 10px 30px 10px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            margin-left: 70px;
        }
        
        .btn {
            height: 50px;
            width: 200px;
            margin-left: 80px;
            margin-top: 10px;
            border-radius: 50px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            background-color: hsl(204, 81%, 48%);
        }
        
        .select {
            font-size: 25px;
            border: none;
            outline: none;
            background-color: transparent;
            position: relative;
            cursor: pointer;
            color: white;
        }
        
        .services {
            height: 300px;
            width: 350px;
            margin-top: 40px;
            background: white;
            border: 4px solid hsl(204, 81%, 48%);
            row-gap: 2px;
            column-gap: 2px;
            transition: transform 0.3s ease-in;
        }
        
        .services:hover {
            transform: translateY(-10px);
        }
        
        .services img {
            margin-left: 70px;
            margin-top: 20px;
            width: 60%;
            height: 60%;
            background-size: cover;
            background-position: center;
            text-align: center;
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
                <li><a href="Home_page.jsp">Home</a></li>
                <li><a href="Services.jsp">Services</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
                <li><a href="Aboutus.jsp">About Us</a></li>
            </ul>
         </nav>
    </header>
    <header class="main-header">
        <h1>OUR SERVICES</h1>
    </header>
    
    <div class="services-box">
        <div class="services">
            <img src="https://cdn.vectorstock.com/i/500p/12/68/chef-hat-with-kitchen-utensils-vector-17431268.jpg" alt="Cooking">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Cooking</button></a>
            </div>
        </div>
        <div class="services">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaRkZcHfj1y1QxxMBylBpXsMwLVdGrIqY3jw&s" alt="Floor Cleaning">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Floor Cleaning</button></a>
            </div>
        </div>
        <div class="services">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgjCa9qI-BC8cC3wdzH-kbkqVciSO5NtSmnQ&s" alt="Elder Care">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Elder Care</button></a>
            </div>
        </div>
    </div>
        
    <div class="services-box">
        <div class="services">
            <img src="https://t3.ftcdn.net/jpg/01/32/20/86/360_F_132208672_ybEE755OWhyrUH0aF40pnaLxBjOdv8nj.jpg" alt="Baby Care">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Baby Care</button></a>
            </div>
        </div>
        <div class="services">
            <img src="https://png.pngtree.com/png-clipart/20230922/original/pngtree-laundry-logo-vector-icon-concept-dirty-soap-vector-png-image_12523742.png" alt="Clothes Wash">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Clothes Wash</button></a>
            </div>
        </div>
        <div class="services">
            <img src="https://static.vecteezy.com/system/resources/previews/021/401/981/non_2x/flower-pot-in-hand-logo-design-garden-care-logo-design-concept-free-vector.jpg" alt="Gardening">
            <div class="btn">
                <a href="Login.jsp"><button class="select">Gardening</button></a>
            </div>
        </div>
    </div>
</body>
</html>

