<%-- 
    Document   : Packages2
    Created on : 1 Feb 2025, 9:11:54 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Packages</title>
    <style>
       .body{
            background-color: #fafafa;
            margin: 0;
            display: flex;
            height: 100vh;
        }
        .title{
            height: 150px;
            width: 100%;
            background-color: hsl(204, 81%, 48%);
            text-align: center;
            color: white;
            font-size: 30px;
            padding-bottom: 10px;

        }
        .container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            margin-left: 60px;
        
        }


        .btn{
            height: 50px;
            width: 200px;
            margin-left: 80px;
            margin-top: 10px;
            border-radius: 50px;
            display: flex;
            justify-content: space-around;
            margin-right: 10px;
            background-color:hsl(204, 81%, 48%) ;

        }
    
        .id-card {
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;

            }
            .id-card:hover{
                transform:translateY(-10px);
            }

        .header {
            background-color: hsl(204, 81%, 48%);
            color: white;
            padding: 10px;
            border-radius: 10px 10px 0 0;
        }

        .photo img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-top: 20px;
        }

        .details {
            margin-top: 20px;
        }

        .details p {
            margin: 5px 0;
        }
        .btn{
            height: 50px;
            width: 200px;
            margin-left: 50px;
            margin-top: 10px;
            border-radius: 50px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .submit{
            font-size: 25px;
            border: none;
            outline: none;
            background-color: transparent;
            position: relative;
            cursor: pointer;
            color: white;

        }
    </style>
</head>
<body>
    <div class="title">
        <h1>Service Packages</h1>
        <h4>We offer customized Packages to fit your needs.</h4>
    </div>
    <div class="container">
    <div class="id-card">
        <div class="header">
            <h1>Basic Package</h1>
            <h1>15,000</h1>
        </div>
        
        <div class="details">
            <h2>Easy clean for ideal small homes</h2>
           <h4> Get a reliable and trained maid for a month with our Basic Package.</h4>
            
            <div class="btn">
                <a href="ClientEnquiry4.jsp"> <button class="submit">Select</button></a>
            </div>
        </div>
    </div>
    <div class="id-card">
        <div class="header">
            <h1>Standard Package</h1>
            <h1>12,000</h1>
                 </div>
        
        <div class="details">
            <h2>Double delight for ideal busy homes</h2>
            <h4>Get twise the convenience with Service for 15 day's our Standard Package.</h4>
   
            <div class="btn">
                <a href="ClientEnquiry4.jsp"><button class="submit">Select</button></a>
            </div>
        </div>
    </div>
    <div class="id-card">
        <div class="header">
            <h1>Premium Package</h1>
            <h1>10,000</h1>
        </div>
        
        <div class="details">
            <h2>Function frenzy for ideal special occasions</h2>
            <h4>Get all Services for 1 week for your special event with our Premium Packages.</h4>
           
            <div class="btn">
                <a href="Event.jsp"><button class="submit">Select</button></a>
            </div>

        </div>
    </div>
    
</div>
</body>
</html>