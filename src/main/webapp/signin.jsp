<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/26/2024
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignIn</title>
    <link rel="stylesheet" href="./css/signin.css">
</head>
<body>
<div>
    <div class="main">
        <p class="sign" align="center">Sign in</p>
        <form class="form1" action="signIn" method="post">
            <input class="username " name="email" type="email" align="center" placeholder="email">
            <input class="password" name="password" type="password"  align="center" placeholder="Password">
            <button class="submit" type="submit" align="center">Sign in</button>

        </form>

    </div>

</div>
</body>
</html>
