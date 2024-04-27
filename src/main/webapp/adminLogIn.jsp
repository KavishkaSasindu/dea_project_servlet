<%--
  Created by IntelliJ IDEA.
  User: thisa
  Date: 4/27/2024
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin SignIn</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<section>
    <div class="container">
        <h1>Login</h1>
        <form class="form" method="post">

            <div class="user1">
                <label for="username">Email</label>
                <input type="email" placeholder="Enter Your Email" id="username">
            </div>

            <div class="user2">
                <label for="password">Password</label>
                <input type="password" placeholder="Enter Your PAssword" id="password">
            </div>

            <div class="user3">
                <button type="submit">Login</button>
                <button type="reset">Clear</button>
            </div>
        </form>

    </div>
</section>
</body>
</html>

