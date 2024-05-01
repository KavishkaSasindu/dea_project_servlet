<%@ page import="models.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.ProductDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .card {
            height: auto; /* Allow cards to adjust height based on content */
            overflow: hidden; /* Ensure images don't overflow */
        }

        .card img {
            object-fit: cover; /* Ensure images cover the entire card */
            height: 300px; /* Set a fixed height for the images */
            width: 100%; /* Ensure images fill the entire width of the card */
        }

        .card:hover {
            transform: translateY(-5px); /* Add a simple upward animation on hover */
            transition: transform 0.3s ease; /* Add smooth transition */
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<%
    if (session != null && session.getAttribute("adminEmail") != null) {
        System.out.println("Admin Logged In");
    } else {
        response.sendRedirect("adminLogIn.jsp");
    }
%>

<div class="container mt-5">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            List<Product> productList2 = List.of();
            try {
                ProductDao productDao = new ProductDao();
                productList2 = productDao.getAllProduct();
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println(e.getMessage());
            }
            for (Product product : productList2) {
        %>
        <div class="col">
            <div class="card">
                <img src="<%=product.getMainImage()%>" class="card-img-top" alt="Main Image">
                <div class="card-body">
                    <h5 class="card-title"><%=product.getpName()%></h5>
                    <p class="card-text">Category: <%=product.getCategory()%></p>
                    <p class="card-text">Quantity: <%=product.getQuantity()%></p>
                    <div class="d-flex justify-content-between">
                        <form action="" method="post">
                            <input type="hidden" name="id" value="<%=product.getId()%>">
                            <button type="submit" class="btn btn-dark">Update</button>
                        </form>
                        <form action="" method="post">
                            <input type="hidden" name="id" value="<%=product.getId()%>">
                            <button type="submit" class="btn btn-dark">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xxxxxxx" crossorigin="anonymous"></script>

</body>
</html>
