<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/26/2024
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Form</title>
    <link rel="stylesheet" href="./css/productform.css">
</head>
<body>

<%

    if(session!=null && session.getAttribute("email")!=null){
        System.out.println("Product page");
    }else{
        response.sendRedirect("signin.jsp");
    }

%>
<div class="container">
    <h2>Add Product</h2>
    <form id="productForm" action="addProduct" method="post">
        <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" id="productName" placeholder="The titles should be between 90 to 100 characters." name="productName" required>
        </div>
        <div class="form-group">
            <label for="productPrice">Product Price (Rs.)</label>
            <input type="text" id="productPrice" name="productPrice" placeholder="1 000.00/=" min="0" step="0.01" required>
        </div>

        <div class="form-group">
            <label for="productDescription">Description</label>
            <textarea id="productDescription" name="productDescription" placeholder="Description should be between 490 to 500 characters" rows="4" cols="58" required></textarea>
        </div>
        <div class="form-group">
            <label for="productQuantity">Quantity</label>
            <input type="number" id="productQuantity" name="productQuantity" placeholder="maximum 1000 products" min="0" step="0.01" required>
        </div>


        <div class="form-group">
            <label for="productMainImage">Product Main Image</label>
            <input type="text" id="productMainImage" name="productMainImage" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="productImage1">Product Image one</label>
            <input type="text" id="productImage1" name="productImage1" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="productImage2">Product Image two</label>
            <input type="text" id="productImage2" name="productImage2" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="productImage3">Product Image Three</label>
            <input type="text" id="productImage3" name="productImage3" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" required>
        </div>
        <div class="form-group">
            <button type="submit">Add Product</button>
        </div>
    </form>
</div>
</body>
</html>
