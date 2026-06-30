<%-- 
    Document   : Aboutus
    Created on : 4 Feb 2025, 8:09:50 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Maid Booking</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            background-color: #f7f7f7;
        }

        .header {
            background-color: #2980b9;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .about-section {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .about-section h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 36px;
            color: #2c3e50;
        }

        .about-section p {
            font-size: 18px;
            line-height: 1.6;
            color: #2c3e50;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 40px;
        }

        .team-member {
            flex: 1 1 calc(33.333% - 20px);
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            position: relative; /* Added */
        }

        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 20px;
        }

        .team-member h3 {
            font-size: 24px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .team-member p {
            font-size: 16px;
            color: #7f8c8d;
        }

        .team-member .logo { /* Added */
            position: absolute; /* Added */
            top: 10px; /* Adjust as needed */
            right: 10px; /* Adjust as needed */
            width: 50px; /* Adjust as needed */
            height: 50px; /* Adjust as needed */
        }

        @media (max-width: 768px) {
            .team-member {
                flex: 1 1 100%;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>About Us</h1>
    </div>
    <div class="container">
        <div class="about-section">
            <h1>Welcome to Maid Booking</h1>
            <p>
                At Maid Booking, we are dedicated to providing top-notch maid services to help you maintain a clean and organized home. Our team of experienced and trustworthy maids is here to take the stress out of your daily chores, so you can focus on what matters most to you.
            </p>
            <p>
                Our mission is to deliver exceptional cleaning services while ensuring the highest standards of professionalism, reliability, and customer satisfaction. We carefully select and train our maids to guarantee that they meet our stringent quality criteria.
            </p>
        </div>
        <div class="team">
            <div class="team-member">
                   <h3>Rutuja Tarase</h3>
                
            </div>
            <div class="team-member">
                      <h3>Shweta Sutar</h3>
            </div>
           
        </div>
    </div>
</body>
</html>
