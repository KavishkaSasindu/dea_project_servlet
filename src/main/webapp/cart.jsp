<%@ page import="models.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.CartDAO" %>
<%@ page import="dao.ProductDao" %>
<%@ page import="models.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: janit
  Date: 01/05/2024
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cart</title>
    <link rel="stylesheet" href="css/cart.css">
    <script src="https://kit.fontawesome.com/332a215f17.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp"/>

<%
if(session!=null && session.getAttribute("email")!=null){
    System.out.println("user logged in");
}else{
    response.sendRedirect("signin.jsp");
}

    ArrayList<CartItem> cart_list = (ArrayList<CartItem>) session.getAttribute("cart-list");
List<CartItem> cartProduct = null;
ProductDao productDao = new ProductDao();

if(cart_list!=null){
    cartProduct =  productDao.getCartProducts(cart_list);

    request.setAttribute("cart_list",cart_list);
}
%>

<section class="mt-5">
    <div class="container">
        <div class="cart">
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col"class="text-white">Product</th>
                        <th scope="col"class="text-white">Price</th>
                        <th scope="col"class="text-white">Quantity</th>
                        <th scope="col" class="tex-white">Action</th>
                    </tr>
                    </thead>
                    <tbody>


                    <%
                        if(cart_list!= null){
                            for(CartItem cart : cartProduct){%>
                    <tr>


                        <td>
                            <div class="main">
                                <div class="d-flex">
                                    <img src="<%=cart.getMainImage()%>" alt="" style="width: 150px;height: 150px;object-fit: cover">
                                </div>
                                <div class="des">
                                    <p><%=cart.getpName()%></p>
                                </div>
                                <div style="margin-top: 5px">
                                    <p><%=cart.getpDescription()%></p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <h6><%=cart.getpPrice()%> Rs</h6>
                        </td>
                        <td>
                            <div class="counter">
                                <i class="fas fa-angle-down"></i>
                                <input class="input-number"type="text"
                                       value="1"min="0"max="10">
                                <i class="fas fa-angle-up"></i>
                            </div>
                        </td>
                        <td>
                            <form action="remove" method="post">
                                <input type="hidden" value="<%=cart.getId()%>" name="id">
                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                        </td>
                    </tr>
                            <%}
                        }%>






                    </tbody>
                </table>
            </div>
        </div>
    </div>



</section>



<%

    ArrayList<CartItem> cart_list1 = (ArrayList<CartItem>) session.getAttribute("cart-list");
    List<CartItem> cartProduct1 = null;
    ProductDao productDao1 = new ProductDao();

    if(cart_list!=null) {
        double total = productDao.getTotalCart(cart_list);%>



<div class="col-lg-4 offset-lg-4">
    <div class="checkout">
        <ul>
            <li class="subtotal">Total
                <span>RS<%=total%></span>
            </li>

        </ul>
        <a href=" https://www.paypal.com/signin" class="proceed-btn">Proceed to Checkout</a>
    </div>
</div>
<%}%>
</body>
</html>
