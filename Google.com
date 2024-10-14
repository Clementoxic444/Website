<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Sign-In</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4285f4;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #357ae8;
        }
        .footer {
            text-align: center;
            margin-top: 15px;
        }
        .footer a {
            color: #4285f4;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Sign in</h2>
        <form id="signInForm">
            <input type="email" id="email" placeholder="Email or phone" required>
            <input type="password" id="password" placeholder="Password" required>
            <button type="submit">Next</button>
        </form>
        <div class="footer">
            <p><a href="#">Forgot email?</a></p>
            <p><a href="#">Forgot password?</a></p>
        </div>
    </div>

    <script>
        document.getElementById('signInForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            alert(`Email: ${email}\nPassword: ${password}`);
            // Add further actions here, such as sending the data to a server
        });
    </script>
</body>
</html>
