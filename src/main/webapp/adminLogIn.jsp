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
    <link rel="stylesheet" href="./css/AdminLogin.css">
</head>
<body>
<div class="container">
    <form id="contact" action="" method="post">
        <h3>SignUp Here</h3>
        <fieldset>
            <input placeholder="Your Email Address" type="email" name="email" tabindex="2" required>
        </fieldset>
        <fieldset>
            <input placeholder="*************" type="password" name="password" tabindex="3" required>
        </fieldset>

        <fieldset>
            <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
        </fieldset>

    </form>
</div>
</body>
</html>

