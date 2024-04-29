<%@ page import="models.Product" %>
<%@ page import="dao.ProductDao" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 4/26/2024
  Time: 8:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Preview Product</title>
    <link rel="stylesheet" href="./css/previewProduct.css">
</head>
<body>

<%
    int productId = Integer.parseInt(request.getParameter("productId"));
    ProductDao productDao = new ProductDao();
    Product product = productDao.getOneProduct(productId);

    if(product!=null){
        %>
<div class="outer">
    <div class="inner">
        <div class="inner_block_01">
            <img src="<%=product.getMainImage()%>" alt="main-image">
        </div>
        <div class="inner_block_02">
            <div class="inner_block_02_01">
                <div class="container-div">
                    <h1 class="header_01"><%=product.getpName()%></h1>
                    <p class="pgr_01"><%=product.getpDescription()%></p>
                </div>
            </div>
            <div class="inner_block_02_02">
                <div class="container-div_02">
                    Quantity : <input type="number" id="number" name="number">
                </div>
                <div class="container-div_03">
                    <button class="btn_01">View Cart</button>
                </div>
                <div class="container-div_04">
                    <button class="btn_02">Buy Now</button>
                </div>
            </div>
        </div>

    </div>

</div>
<div class="inner_02">
    <div>
        <img src="<%=product.getImg1()%>" alt="img-1">
    </div>
    <div>
        <img src="<%=product.getImg2()%>" alt="img-2">
    </div>
    <div>
        <img src="<%=product.getImg3()%>" alt="img-3">
    </div>
</div>
    <%}else{%>

    <%}%>




</body>
</html>
