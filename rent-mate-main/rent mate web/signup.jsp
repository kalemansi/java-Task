<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
</html>
<head>
<meta charset="UTF-8">
<title>Account</title>
<style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url('background.jpg'); /* Path to your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            filter: brightness(1.2); /* Make it lighter */
            height: 100vh;
            font-family: Arial, sans-serif;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            border-radius: 10px;
            padding: 30px;
            max-width: 400px;
            margin: 100px auto; /* Center vertically and horizontally */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #033163; /* Dark blue */
        }

        label {
            display: block;
            margin-top: 10px;
            font-size: 14px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .login-options {
            display: flex;
            justify-content: space-between;
        }

        .login-btn {
            background-color: #033163; /* Dark blue */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #021c3c; /* Slightly darker blue on hover */
        }

        a {
            text-decoration: none;
            color:white; /* Link color */
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            margin-top: 10px;
        }
    </style>
</head>
<body>
	<div class="container">
        <h1>Account</h1>
        <p>Please choose your role to sign up:</p>
        <form action="LoginServlet" method="post"> <!-- Change method to "post" -->
        	<label for="name">Enter Name:</label>
        	<input type="text" id="username" name="username" required><br>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <div class="login-options">
            <button class="login-btn" id="renter-login"><a href=user.html>sign up as Renter</button></a>
            <button class="login-btn" id="owner-login"><a href=owner.html>sign up as Owner</button></a>
        </div>
           
            
        </form>

        <p><a href="Homepage.html">Back to Home</a></p>

        <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        
    </div>
    
</body>