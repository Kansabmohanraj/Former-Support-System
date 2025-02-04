<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Support Service - Login</title>
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
        }

        .login-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVNOm3TkgZ8sLjB5lbpoFWgKFpTdbVsLlO8JhZUNiN2423jaQH5SjK2TDQJwG2pZTZHvs&usqp=CAU') no-repeat center center/cover;
            z-index: -1;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 8px;
            width: 100%;
            max-width: 500px;
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
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
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

        .error-message {
            color: #e74c3c;
            margin-top: 10px;
            font-size: 14px;
            display: block;
        }

        .footer-links {
            text-align: center;
            margin-top: 20px;
        }

        .footer-links a {
            color: #4CAF50;
            text-decoration: none;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="login-image"></div>

    <div class="login-container">
        <h1>Farmer Support Service</h1>
        <p>Log in to Farmer Support Service</p>

        <!-- Form for login -->
        <form action="Log" method="post">
            <input type="text" id="username" name="username" placeholder="Email or username" required>
            <input type="password" id="password" name="password" placeholder="Password" required>

            <!-- Static error message (visible here, but it won't change without server-side or JS) -->
            <div class="error-message">
                Invalid login credentials. Please try again.
            </div>

            <button type="submit">Log In</button>
        </form>

        <div class="footer-links">
            <a href="ForgotPage.jsp">Forgot Password?</a>
        </div>
    </div>

</body>

</html>