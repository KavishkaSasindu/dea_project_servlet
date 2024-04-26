<%--
  Created by IntelliJ IDEA.
  User: PEMIDU HERATH
  Date: 4/26/2024
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
<div>
    <div class="main">
        <p class="sign" align="center">Sign up</p>
        <form class="form1"  action="add" method="post">
            <input class="detail" id="fn" type="text" align="center" placeholder="First Name" name="firstname">
            <input class="detail" id="ls" type="text" align="center" placeholder="Last Name" name="lastname">
            <input class="detail" id="email" type="email" align="center" placeholder="Email Address" name="email">
            <input class="detail" id="nic" type="text" align="center" placeholder="NIC Number" name="nic">
            <input class="detail" id="age" type="text" align="center" placeholder="Age" name="age">

            <input class="pass" type="password" align="center" placeholder="Password" name="password">
            <input class="pass" type="password" align="center" placeholder="Confirm Password" name="confirmPassword">

            <button class="submit" align="center">Sign up</button>
            <p class="forgot" align="center"><a href="signin.jsp">Already have an account</a></p>
        </form>
    </div>
</div>

</body>
</html>
