<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Support Service - Reset Password</title>
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

        .reset-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVNOm3TkgZ8sLjB5lbpoFWgKFpTdbVsLlO8JhZUNiN2423jaQH5SjK2TDQJwG2pZTZHvs&usqp=CAU') no-repeat center center/cover;
            z-index: -1;
        }

        .reset-container {
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

    <div class="reset-image"></div>

    <div class="reset-container">
        <h1>Reset Your Password</h1>
        <p>Please enter your email address, new password, and confirm the new password below.</p>

        <form action="3" method="post">
            <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            <input type="password" id="new-password" name="new-password" placeholder="Enter new password" required>
            <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm new password"
                required>
            <button type="submit">Reset Password</button>
        </form>

        <div class="footer-links">
            <a href="LoginPage.jsp">Back to Login</a>
        </div>
    </div>

</body>

</html>