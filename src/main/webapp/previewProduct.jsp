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
    <link rel="stylesheet" href="./css/myProduct.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<%
    int productId = Integer.parseInt(request.getParameter("productId"));
    ProductDao productDao = new ProductDao();
    Product product = productDao.getOneProduct(productId);

    if (product != null) {
%>

<div class="outer-view">
    <div class="inner-view">
        <div class="preview-card">
            <div class="image-contain">
                <div class="image-area">
                    <div class="main-image">
                        <img class="my-main-image" src="<%=product.getMainImage()%>" alt="main-image">
                    </div>
                    <div class="image-4">
                        <div class="img-1">
                            <img class="sub-img" src="<%=product.getMainImage()%>" alt="">
                        </div>
                        <div class="img-1">
                            <img class="sub-img" src="<%=product.getImg1()%>" alt="">
                        </div>
                        <div class="img-1">
                            <img class="sub-img" src="<%=product.getImg2()%>" alt="">
                        </div>
                        <div class="img-1">
                            <img class="sub-img" src="<%=product.getImg3()%>" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="detail-contain">
                <div class="details">
                    <div class="title">
                        <h1><%=product.getpName()%>
                        </h1>
                    </div>
                    <div class="description">
                        <p><%=product.getpDescription()%>
                        </p>
                    </div>

                    <div class="quantitu-amount" style="margin-top: 5px">
                        <h5><%=product.getQuantity()%> in stock</h5>
                    </div>
                    <div class="quantity">
                        <form action="">
                            <label for="quantity">Quantity :</label>
                            <input type="number" name="quantity" id="quantity">
                        </form>
                    </div>
                    <div class="price">
                        <h2 style="color: darkred"><%=product.getpPrice()%>Rs</h2>
                        <p>No discount available</p>
                    </div>
                    <div class="category">
                        <h4>Category</h4>
                    </div>
                    <div class="shipping">
                        <p>Free Shipping Hurry Up!</p>
                    </div>

                    <div class="buttons" style="display: flex">
                        <form action="">
                            <input type="hidden" name="productId" value="<%=product.getId()%>">
                            <button class="btn btn-dark">Add to cart</button>
                        </form>
                        <form action="" style="margin-left: 10px">
                            <input type="hidden" name="productId" value="<%=product.getId()%>">
                            <button class="btn btn-dark">Buy Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%} else {%>
<p>No product available</p>
<%}%>


<script src="./js/script.js">

</script>

</body>
</html>
