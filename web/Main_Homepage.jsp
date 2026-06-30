<%-- 
    Document   : Main_Homepage
    Created on : 31 Jan 2025, 10:18:29 pm
    Author     : Hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: #f3f3f3;
    color: #333;
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

.main {
    background-image: url("https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D");
    color: white;
    text-align: center;
    padding: 160px 20px;
}

.main h2 {
    font-size: 36px;
    margin: 0;
    line-height: 1.4;
}

.main p {
    font-size: 18px;
    margin: 20px 0;
}

.btn {
    background-color: #e74c3c;
    color: white;
    padding: 15px 30px;
    text-decoration: none;
    font-size: 18px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #c0392b; /* Darker red on hover */
}

/* Testimonials Section */
.testimonials {
    background-color: #ecf0f1; /* Light gray background */
    padding: 50px 20px;
    text-align: center;
}

.testimonials h2 {
    font-size: 30px;
    margin-bottom: 30px;
    color: #2c3e50;
}

.testimonial-cards {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
}

.testimonial-card {
    background-color: #fff;
    padding: 20px;
    width: 40%;
    margin: 10px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-style: italic;
}

.testimonial-card p {
    font-size: 16px;
}

.testimonial-card h4 {
    font-size: 18px;
    margin-top: 10px;
    color: #3498db; /* Blue color for client's name */
}

/* Contact Section */
.contact-container {
    text-align: center;
    padding: 50px 20px;
    background-color: #fff;
    border-radius: 10px;
    width: 800px;
    margin-left: 300px;
}

.contact-container h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
}

.contact-container p {
    font-size: 1.2em;
    margin-bottom: 30px;
}

.contact-form {
    display: inline-block;
    max-width: 500px;
    width: 100%;
}

.contact-form input[type="text"],
.contact-form input[type="email"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1em;
}

.contact-form button {
    width: 100%;
    padding: 10px;
    background-color: #00bcd4;
    color: white;
    font-size: 1em;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.contact-form button:hover {
    background-color: #008c9e;
}

.info-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    background-color: #ecf0f1;
    padding: 30px 10px;
}

.info-box {
    flex: 1;
    min-width: 200px;
    text-align: center;
    margin: 10px;
}

.info-box img {
    width: 50px;
    margin-bottom: 10px;
}

.info-box h3 {
    margin-bottom: 10px;
    font-size: 1.2em;
}

.info-box p {
    margin: 5px 0;
    font-size: 0.9em;
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
                <li><a href="Login.jsp">Login</a></li>
                <li><a href="Aboutus.jsp">About Us</a></li>
                <li><a href="#contact">Contact</a></li> <!-- Modified link -->
            </ul>
        </nav>
    </header>

    <section class="main">
        <div class="main-content">
            <h2>Reliable, Trustworthy, and Efficient Cleaning and other Services</h2>
            <p>We offer Reliable and Trustworthy maid for home care services at affordable prices.</p><br><br>
            <a href="ViewServices.jsp" class="btn">View Services</a>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials">
        <h2>What Our Clients Say</h2>
        <div class="testimonial-cards">
            <div class="testimonial-card">
                <p>"Excellent service! Our maids are trusted and experienced for hassle-free home Cleaning services!"</p>
                <h4>- Aishwarya Bhosale</h4>
            </div>
            <div class="testimonial-card">
                <p>"The team was very professional and friendly. I highly recommend their services!"</p>
                <h4>- Shweta Ghadage</h4>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <div class="contact-container" id="contact"> <!-- Added id -->
        <h1>Contact Us</h1>
        <p>Need help with maid? Reach out to Maid Booking!</p>
        <form class="contact-form">
            <input type="email" placeholder="Enter a valid email address" required>
            <input type="text" placeholder="Enter your name" required>
            <button type="submit">Submit</button>
        </form>
    </div>
    
    <div class="info-section">
        <div class="info-box">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWa32vVIfD3FpDL120cPRive37W7mb3EFWlw&s" height="50px" width="70px" alt="Truck icon">
            <h3>Our Services</h3>
            <p>House Cleaning</p>
            <p>Baby Care</p>
        </div>
        <div class="info-box">
            <img src="https://img.icons8.com/ios-filled/50/000000/phone.png" alt="Phone icon">
            <h3>Contact Numbers</h3>
            <p>+91 8277928909</p>
            <p>+91 9823134712</p>
        </div>
        <div class="info-box">
            <img src="https://img.icons8.com/ios-filled/50/000000/map-marker.png" alt="Location icon">
            <h3>Office Location</h3>
            <p>Maid Booking Pvt. Ltd.</p>
            <p>Town Hall, City Center</p>
            <p>Karad, Maharashtra</p>
        </div>
        <script> 
            document.querySelector('.contact-form').addEventListener('submit', function(event) { 
            event.preventDefault(); alert('Thank you for reaching out! We will get back to you soon.');
             }); 
        </script> 
     </body>
</html>