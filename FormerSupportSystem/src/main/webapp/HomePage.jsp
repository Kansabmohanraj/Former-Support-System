<%@page import="org.log.UserData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Support Service - Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body,
        html {
            height: 100%;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f7f7f7;
        }

        .home-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVNOm3TkgZ8sLjB5lbpoFWgKFpTdbVsLlO8JhZUNiN2423jaQH5SjK2TDQJwG2pZTZHvs&usqp=CAU') no-repeat center center/cover;
            z-index: -1;
        }

        .home-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 50px;
            border-radius: 8px;
            width: 100%;
            max-width: 800px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
            z-index: 1;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            color: #555;
            font-size: 18px;
            margin-bottom: 40px;
        }

        .feature-list {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            margin-bottom: 40px;
        }

        .feature {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            margin: 10px;
            width: 30%;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .feature:hover {
            background-color: #45a049;
        }

        .feature h3 {
            margin-bottom: 15px;
        }

        .footer-links {
            text-align: center;
            margin-top: 30px;
            padding: 10px;
        }

        .footer-links a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 18px;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }

        /* Mobile responsive adjustments */
        @media (max-width: 768px) {
            .feature {
                width: 100%; /* Make feature cards stack vertically */
                margin: 10px 0;
            }
        }
    </style>
</head>

<body>
    <div class="home-image"></div>

    <div class="home-container">
        <h1>Welcome Back, <%=request.getAttribute("dbuser") %>!</h1>
        <p>Your trusted platform for all farming-related support, resources, and tools.</p>
       
   
        <div class="feature-list">
            <div class="feature" onclick="window.location.href='SupportArticles.jsp'" aria-label="Go to Support Articles">
                <h3>Support Articles</h3>
                <p>Find helpful guides, FAQs, and troubleshooting tips.</p>
            </div>
            <div class="feature" onclick="window.location.href='AccountSettings.jsp'" aria-label="Go to Account Settings">
                <h3>Account Settings</h3>
                <p>Manage your account details, preferences, and more.</p>
            </div>
            <div class="feature" onclick="window.location.href='ContactUs.jsp'" aria-label="Go to Contact Support">
                <h3>Contact Support</h3>
                <p>If you need help, get in touch with our support team.</p>
            </div>
        </div>

        <!-- Logout link -->
        <div class="footer-links">
            <a href="LoginPage.jsp">Log Out</a>
        </div>
    </div>

</body>

</html>
