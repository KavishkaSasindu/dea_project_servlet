<%--
  Created by IntelliJ IDEA.
  User: sasin
  Date: 4/28/2024
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="./css/navbar.css">
</head>
<body>

<%
  boolean isLoggedIn = false;
  if(session!=null && session.getAttribute("email")!=null){
    %><div class="nav">
  <div class="nav-container">
    <div class="list-items">
      <div class="logo">
        <h2>Logo</h2>
      </div>
      <div class="list">
        <ul>
          <li><a href="">Home</a></li>
          <li><a href="">Product</a></li>
          <li><a href="">Admin Area</a></li>
          <li><a href="">LogOut</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<%  }else{
    %><div class="nav">
  <div class="nav-container">
    <div class="list-items">
      <div class="logo">
        <h2>Logo</h2>
      </div>
      <div class="list">
        <ul>
          <li><a href="">Home</a></li>
          <li><a href="">Product</a></li>
          <li><a href="">Admin Area</a></li>
          <li><a href="">SignIn</a></li>
        </ul>
      </div>
    </div>
  </div>
</div><%
} %>




</body>
</html>
