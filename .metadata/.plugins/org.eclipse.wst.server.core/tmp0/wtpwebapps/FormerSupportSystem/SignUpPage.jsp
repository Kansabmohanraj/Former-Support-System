<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Farmer Support Service</title>
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
            background-color: #f4f4f4;
        }

        .signup-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 450px;
            width: 100%;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            color: #555;
            font-size: 16px;
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
        }

        button:hover {
            background-color: #45a049;
        }

        .footer-links {
            margin-top: 20px;
            font-size: 14px;
        }

        .footer-links a {
            color: #4CAF50;
            text-decoration: none;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #e74c3c;
            font-size: 14px;
            margin-top: 10px;
            display: none;
        }
    </style>
</head>

<body>

    <div class="signup-container">
        <h1>Sign Up</h1>
        <p>Create an account to join the Farmer Support Service</p>

        <!-- Sign Up Form -->
        <form action="SignUp" method="post">
            <input type="text" id="username" name="username" placeholder="Full Name" required>
            <input type="email" id="email" name="email" placeholder="Email Address" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" required>

            <!-- Error Message (for failed validation on the server-side) -->
            <div class="error-message" id="error-message">
                Passwords do not match. Please try again.
            </div>

            <button type="submit">Sign Up</button>
        </form>

        <div class="footer-links">
            <p>Already have an account? <a href="LoginPage.jsp">Log In</a></p>
        </div>
    </div>

</body>

</html>
