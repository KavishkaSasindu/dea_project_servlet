<%--
  Created by IntelliJ IDEA.
  User: NGC
  Date: 4/29/2024
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashbord</title>
    <link rel="stylesheet" href="./css/admindashbord.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>


<%

    if (session != null && session.getAttribute("adminEmail") != null) {
        System.out.println("Admin Area");
    } else {
        response.sendRedirect("adminLogIn.jsp");
    }

%>


<header role="banner">
    <h1>Logo</h1>
    <ul class="utilities">
        <br>
        <li class="users"><a href="#">My Account</a></li>
        <li class="logout warn">
            <form action="adminLogout" method="post">
                <button type="submit" class="btn btn-dark">Logout</button>
            </form>
        </li>
    </ul>
</header>

<nav role='navigation'>
    <ul class="main">
        <li class="dashboard"><a href="adminDashboard.jsp">Dashboard</a></li>
        <li class="edit"><a href="index.jsp">Home</a></li>
        <li class="write"><a href="productform.jsp">Add Product</a></li>
        <li class="comments"><a href="adminUsers.jsp">All Admins</a></li>
        <li class="users"><a href="adminAllUsers.jsp">Manage Users</a></li>
    </ul>
</nav>

<main role="main">

    <div class="cards">
        <div class="card-group">
            <div class="card">
                <img src="https://img.freepik.com/free-vector/customs-clearance-abstract-concept-vector-illustration-customs-duties-import-expert-licensed-customs-broker-freight-declaration-vessel-container-online-tax-payment-abstract-metaphor_335657-1738.jpg?t=st=1714334399~exp=1714337999~hmac=207a07c13e359a57f87d8c63225244312a6853a6b85dad44bec803a852aff1b1&w=740"
                     alt="Oder Management photo">
                <div class="layer"></div>
                <div class="info">
                    <h1>Oder Management</h1>
                    <p>Keep track of all orders in one place. View, update, and process orders effortlessly, ensuring
                        smooth operations and customer satisfaction.</p>
                    <button>click here</button>
                </div>


            </div>
            <div class="card">
                <img src="https://img.freepik.com/free-vector/delivery-service-with-masks-concept_23-2148520405.jpg?t=st=1714335809~exp=1714339409~hmac=91438cc8c33b19f4539c368d2d015aeca14ac17e5a4f0a719a69736907c7ecda&w=740"
                     alt="Inventory Management photo">
                <div class="layer"></div>
                <div class="info">
                    <h1>Inventory Management</h1>
                    <p>Effortlessly manage users with our user management feature. Add, edit, or remove user accounts as
                        needed, ensuring secure access and smooth operations.</p>
                    <button>click here</button>
                </div>


            </div>
            <div class="card">
                <img src="https://img.freepik.com/free-vector/male-hand-holding-gadget-messages-notification_81522-4433.jpg?t=st=1714334670~exp=1714338270~hmac=16da3785070d4e59c4eb624b29f4aa08bf6048705f915d2ae269c8c38ed02cf3&w=740"
                     alt="User Management photo">
                <div class="layer"></div>
                <div class="info">
                    <h1>User Management</h1>
                    <p>Stay on top of your inventory with our inventory management tool. Track stock levels, manage
                        product listings, and streamline inventory replenishment for optimized operations</p>
                    <button><a href="adminAllUsers.jsp">Click Here</a></button>
                </div>

            </div>
            <div class="card">
                <img src="https://img.freepik.com/free-vector/man-using-smartphone-with-speech-bubble_24877-56220.jpg?t=st=1714335196~exp=1714338796~hmac=be36cbf4ee716257e7c537054c409976b9f64894c4ddabcec95c82636c32f598&w=740"
                     alt="Settings and Configuration photo">
                <div class="layer"></div>
                <div class="info">
                    <h1>Settings and Configuration</h1>
                    <p>Customize your dashboard to fit your needs. Adjust display and notification settings for a
                        personalized experience and smoother workflow</p>
                    <button><a href="adminUsers.jsp">Click Here</a></button>
                </div>

            </div>
        </div>
    </div>


    <div class="card-group">
        <div class="card">
            <img src="https://img.freepik.com/free-vector/businessmen-with-statistics-graphics-icons_24877-57689.jpg?t=st=1714339698~exp=1714343298~hmac=4f46d6c98b7e46f4fa41aec64b2069d55d584cab7d3f59854862115933c49687&w=740"
                 alt="Analytics and Reporting photo">
            <div class="layer"></div>
            <div class="info">
                <h1>Analytics and Reporting</h1>
                <p> Gain insights and track performance with our analytics tools. Generate reports to understand trends
                    and make informed decisions for your business.</p>
                <button>click here</button>
            </div>


        </div>
        <div class="card">
            <img src="https://img.freepik.com/free-vector/boy-browsing-social-media-laptop_1308-124131.jpg?t=st=1714339811~exp=1714343411~hmac=549ab748b74e71b600ab7c66771aaa9063f52a6742de2d336ad03b750478a037&w=740"
                 alt="Content Management photo">
            <div class="layer"></div>
            <div class="info">
                <h1>Content Management</h1>
                <p>Easily create, edit, and organize your website content. Streamline the process of publishing and
                    updating content to keep your website fresh and engaging.</p>
                <button><a href="adminAllUsers.jsp">Click Here</a></button>
            </div>


        </div>
        <div class="card">
            <img src="https://img.freepik.com/free-photo/3d-render-robot-with-padlock_1048-6042.jpg?t=st=1714340214~exp=1714343814~hmac=2e556aea0dcf89f39c349f0f2d9775da65fc65136e2de8f36aa22afafe146c24&w=360"
                 alt="Security and Authentication photo">
            <div class="layer"></div>
            <div class="info">
                <h1>Security and Authentication</h1>
                <p>Protect your data and users with robust security measures. Ensure safe access to your platform
                    through authentication protocols, keeping sensitive information secure.</p>
                <button>click here</button>
            </div>

        </div>
        <div class="card">
            <img src="https://img.freepik.com/free-vector/push-notifications-concept-illustration_114360-4730.jpg?t=st=1714340658~exp=1714344258~hmac=5e45d626d4876489ec7f39b15a61eee0b9d580914d7f587756b8bd6c47e2f8b1&w=740"
                 alt=" Notifications photo">
            <div class="layer"></div>
            <div class="info">
                <h1>Notifications</h1>
                <p>Stay informed with timely updates. Receive notifications for important events, keeping you in the
                    loop and enabling quick response when needed.</p>
                <button>click here</button>
            </div>

        </div>
    </div>


</main>
</body>
</html>
