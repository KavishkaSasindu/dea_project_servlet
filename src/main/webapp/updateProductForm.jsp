<%@ page import="models.Product" %>
<%@ page import="dao.ProductDao" %><%--
  Created by IntelliJ IDEA.
  User: sasin
  Date: 5/1/2024
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="./css/updateProduct.css">
</head>
<body>
<jsp:include page="navbar.jsp"/>

<%

  if(session!=null && session.getAttribute("adminEmail")!=null){
    System.out.println("Product page");
  }else{
    response.sendRedirect("adminLogIn.jsp");
  }



  Product user =null;

  int proId = Integer.parseInt(request.getParameter("id"));

  ProductDao userDao = new ProductDao();
  user = userDao.getOneProduct(proId);
  System.out.println(proId);

  if(session!=null && session.getAttribute("adminEmail")!=null){
    System.out.println("admin sign in");
  }else{
    response.sendRedirect("adminLogIn.jsp");
  }


%>
<div class="container">
  <h2>Update Product</h2>
  <form id="productForm" action="updateProduct" method="post">
    <div class="form-group">
      <label for="productName">Product Name</label>
      <input type="hidden" id="productId" placeholder="The titles should be between 90 to 100 characters." name="id" value="<%=proId%>" required>
    </div>
    <div class="form-group">
      <label for="productName">Product Name</label>
      <input type="text" id="productName" placeholder="The titles should be between 90 to 100 characters." name="productName" value="<%=user.getpName()%>" required>
    </div>
    <div class="form-group">
      <label for="productPrice">Product Price (Rs.)</label>
      <input type="text" id="productPrice" name="productPrice" placeholder="1 000.00/=" min="0" step="0.01" value="<%=user.getpPrice()%>" required>
    </div>

    <div class="form-group">
      <label for="productDescription">Description</label>
      <input id="productDescription" name="productDescription" placeholder="Description should be between 490 to 500 characters" value="<%=user.getpDescription()%>"  required />
    </div>
    <div class="form-group">
      <label for="productQuantity">Quantity</label>
      <input type="number" id="productQuantity" name="productQuantity" placeholder="maximum 1000 products" min="0" step="0.01" value="<%=user.getQuantity()%>"  required>
    </div>


    <div class="form-group">
      <label for="productMainImage">Product Main Image</label>
      <input type="text" id="productMainImage" name="productMainImage" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" value="<%=user.getMainImage()%>" required>
    </div>
    <div class="form-group">
      <label for="productImage1">Product Image one</label>
      <input type="text" id="productImage1" name="productImage1" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" value="<%=user.getImg1()%>" required>
    </div>
    <div class="form-group">
      <label for="productImage2">Product Image two</label>
      <input type="text" id="productImage2" name="productImage2" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" value="<%=user.getImg2()%>" required>
    </div>
    <div class="form-group">
      <label for="productImage3">Product Image Three</label>
      <input type="text" id="productImage3" name="productImage3" placeholder="https://www.google.com/search?q=image" min="0" step="0.01" value="<%=user.getImg3()%>" required>
    </div>
    <div class="form-group">
      <label for="productImage3">Product Category</label>
      <input type="text" id="productCategory" name="productCategory" placeholder="Electronic" min="0" step="0.01" value="<%=user.getCategory()%>" required>
    </div>
    <div class="form-group">
      <button type="submit">Update Product</button>
    </div>
  </form>
</div>
</body>
</html>
