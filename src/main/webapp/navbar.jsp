<%@ page import="models.CartItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.ProductDao" %><%--
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
  if(session!=null && session.getAttribute("email")!=null){
    System.out.println("user logged in");
  }else{
    response.sendRedirect("signin.jsp");
  }

  ArrayList<CartItem> cart_list = (ArrayList<CartItem>) session.getAttribute("cart-list");
  List<CartItem> cartProduct = null;
  ProductDao productDao1 = new ProductDao();
  if(cart_list!=null){
    cartProduct =  productDao1.getCartProducts(cart_list);
    request.setAttribute("cart_list",cart_list);
  }
%>

<%
  boolean isLoggedIn = false;
  if(session!=null && session.getAttribute("email")!=null){
    %><div class="nav">
  <div class="nav-container">
    <div class="list-items">
      <div class="logo">
        <h1 style="color: white">Quick Cart</h1>
      </div>
      <div class="list">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="allProduct.jsp">Product</a></li>
          <li><a href="adminLogIn.jsp">Dashboard</a></li>
          <li><a href="userProfile.jsp">Profile</a></li>
          <li><a href="cart.jsp">Cart <span class="badge badge-danger" style="background-color: red;color: white;">${cart_list.size()}</span> </a></li>
          <li><a href="aboutUs.jsp">About Us</a></li>
          <li>
            <form action="logOut" method="post">
              <button class="btn btn-dark" type="submit" style="font-size: 25px; background-color: black; border: none">Logout</button>
            </form>
          </li>
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
        <h2 style="color: darkred">Quick Cart</h2>
      </div>
      <div class="list">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="allProduct.jsp">Product</a></li>
          <li><a href="adminDashboard.jsp">Dashboard</a></li>
          <li><a href="userProfile.jsp">Profile</a></li>
          <li><a href="aboutUs.jsp">About Us</a></li>
          <li><a href="signin.jsp">SignIn</a></li>
        </ul>
      </div>
    </div>
  </div>
</div><%
} %>




</body>
</html>
