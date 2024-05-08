<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 4/26/2024
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <style>
        .c-item {
            height: 550px;
        }

        .c-img {
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover;
            object-fit: cover;
            filter: brightness(0.6);
        }
    </style>

</head>
<body>

<%--navbar--%>
<jsp:include page="navbar.jsp"/>

<div class="nav-con"></div>


<%--main title--%>
<div class="title-container">
    <div class="sub-container">
        <h2 class="head-2">"Shopify: Crafting Seamless Shopping</h2>
    </div>
</div>


<%--main slider--%>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleSlidesOnly" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleSlidesOnly" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleSlidesOnly" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active c-item">
            <img src="./assets/pexels-dom-j-7304-45982.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
                <button class="btn btn-primary">Go Products</button>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="./assets/pexels-goumbik-292998.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
                <button class="btn btn-primary">Go Products</button>
            </div>
        </div>
        <div class="carousel-item c-item">
            <img src="./assets/pexels-pixabay-265906.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
                <button class="btn btn-primary">Go Products</button>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleSlidesOnly"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleSlidesOnly"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<%--bar--%>
<div class="section-bar"></div>

<%--description Area--%>
<div class="outer" data-aos="fade-up">
    <div class="inner">
        <div class="inner-1">
            <div class="title-1">
                <h2>Get Your Own Product Today</h2>
            </div>
            <div class="para-1">
                <p>"Get Your Own Product Today" is a versatile solution designed to meet your needs. Whether you're a
                    business owner, entrepreneur, or simply looking to streamline your processes, our product offers an
                    array of features to help you succeed. From efficient task management to seamless collaboration,
                    discover the convenience and effectiveness of "Get Your Own Product Today" now!</p>
            </div>
        </div>
    </div>
</div>

<%--card area--%>
<div class="card-outer">
    <div class="card-inner">
        <div class="card" data-aos="fade-up">
            <img src="./assets/pexels-mota-701877.jpg" alt="img-1">

        </div>
        <div class="card" data-aos="fade-up">
            <img src="./assets/pexels-cottonbro-3945667.jpg" alt="img-2">
        </div>
        <div class="card" data-aos="fade-up">
            <img src="./assets/pexels-alessandro-oliverio-611273-1472443.jpg" alt="img-3">
        </div>
        <div class="card" data-aos="fade-up">
            <img src="./assets/pexels-ferarcosn-190819.jpg" alt="img-4">
        </div>
    </div>
</div>

<div class="section-2"></div>

<%--description Area--%>
<div class="outer" data-aos="fade-up">
    <div class="inner">
        <div class="inner-1">
            <div class="title-1">
                <h2>Buy What You Want</h2>
            </div>
            <div class="para-1">
                <p>"Buy What You Want" revolutionizes your shopping experience by putting your preferences front and
                    center. With a vast array of options, it's your gateway to tailor-made indulgence. Whether you crave
                    the latest tech innovations, desire luxurious treats, or seek everyday essentials, this platform
                    empowers you to shape your own shopping journey. Revel in the joy of exploring and selecting items
                    that resonate with your unique style and aspirations. From practical necessities to extravagant
                    splurges, every purchase is a testament to your individuality and freedom. With "Buy What You Want,"
                    shopping becomes more than just a transaction; it's an expression of your identity and desires,
                    ensuring that every acquisition brings satisfaction and fulfillment.</p>
            </div>
        </div>
    </div>
</div>

<%--bar--%>
<div class="section-bar"></div>

<div class="card-outer">
    <div class="card-inner">
        <div class="card" data-aos="fade-up">
            <img src="https://5.imimg.com/data5/WW/PE/MY-49716967/peony-baby-girl-clothes-500x500.png" alt="img-1">
            <a href="" class="btn btn-light">All Products</a>
        </div>
        <div class="card" data-aos="fade-up">
            <img src="https://assets.vogue.com/photos/62f6a400d51389085c5d4ba7/3:4/w_748%2Cc_limit/slide_4.jpg" alt="img-2">
            <a href="" class="btn btn-light">All Products</a>
        </div>
        <div class="card" data-aos="fade-up">
            <img src="https://www.tomjames.com/pics/catalog/2024SP/pics/Tom-James-Spring-2024-Womens-54.jpg" alt="img-3">
            <a href="" class="btn btn-light">All Products</a>
        </div>
        <div class="card" data-aos="fade-up">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNB-hQqlyWb7QGwhjqEZTQQMgUVcfYfxEW4ugZGZEQw&s" alt="img-4">
            <a href="" class="btn btn-light">All Products</a>
        </div>
    </div>
</div>

<div class="section-2"></div>

<div class="footer">
   <jsp:include page="footer.jsp"/>
</div>

<script>
    AOS.init();
</script>
</body>
</html>
