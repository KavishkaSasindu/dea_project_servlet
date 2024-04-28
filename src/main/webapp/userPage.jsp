<%--
  Created by IntelliJ IDEA.
  User: malin
  Date: 4/26/2024
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>

    <!-- Link CSS page  -->
    <link rel="stylesheet" href="./css/userPage.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
</head>

<body>

    <!-- First interface -->
    <!--<div class="container">
        <h1>User Profile</h1>
        <div class="profile-info"> -->

            <!-- user profile information -->

            <!--<img src="profile-pic.jpg" alt="Profile Picture">
            <p>User Name</p>
            <ul>
                <li><span>Email:</span> user@example.com</li>
                <li><span>NIC No:</span> 222229999888</li>
                <li><span>Age:</span> 25</li>
            </ul>
        </div>
    </div>  -->

    <jsp:include page="navbar.jsp"/>

    <!--Second Interface -->
<div class="profile-car">
    <div class="center">
        <div class="card center">
            <div class="prof-img">
                <img src="https://img.freepik.com/free-photo/3d-illustration-cartoon-character-business-suit-glasses_1142-40377.jpg?t=st=1714240158~exp=1714243758~hmac=341956b9b21e2472e51f90ac7d63d892c2e07b8b2919f82d478f6ce180bc9386&w=740" alt="" />
                <h1>User Profile</h1>
                <div class="hide">
                    <p>
                    <ul>
                        <li><span>Email:</span> user@example.com</li>
                        <li><span>NIC No:</span> 222229999888</li>
                        <li><span>Age:</span> 25</li>
                    </ul>
                    </p>
                    <div class="icons center">
                        <i class="fab fa-instagram icon"></i>
                        <i class="fab fa-facebook icon"></i>
                        <i class="fab fa-github icon"></i>
                    </div>
                    <button class="more">More</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
