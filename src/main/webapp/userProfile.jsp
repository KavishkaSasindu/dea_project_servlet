<%@ page import="dao.UserDao" %>
<%@ page import="models.User" %><%--
  Created by IntelliJ IDEA.
  User: thisa
  Date: 4/30/2024
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodingDung | Profile Template</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/userProfile.css">
</head>
<body>

<jsp:include page="navbar.jsp"/>
<%
    // Retrieve user email from session
    String userEmail = (String) session.getAttribute("email");
    System.out.println(userEmail);

    // Create instance of UserDao
    UserDao userDao = new UserDao();

    // Call getUserByEmail method to fetch user data
    User user = userDao.getUserBySession(userEmail);

    // Display user data
    if (user != null) {
%>
<div class="container light-style flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">
        User Account settings
    </h4>

    <div class="card overflow-hidden">
        <div class="row no-gutters row-bordered row-border-light">
            <div class="col-md-3 pt-0">
                <div class="list-group list-group-flush account-settings-links">
                    <a class="list-group-item list-group-item-action active" data-toggle="list"
                       href="#account-general">General</a>
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                       href="#account-info">Info</a>
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                       href="#all-products">All Products</a>
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                       href="#manage-products">Manage Products</a>
                </div>
            </div>

            <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane fade active show" id="account-general">
                        <div class="card-body media align-items-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt
                                 class="img">
                        </div>

                        <hr class="border-light m-0">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label">Username</label>
                                <input type="text" class="form-control mb-1" value="<%=user.getFirstName()%> <%=user.getLastName()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">First Name</label>
                                <input type="text" class="form-control" value="<%=user.getFirstName()%>">
                                <label class="form-label">Last Name</label>
                                <input type="text" class="form-control" value="<%=user.getLastName()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">E-mail</label>
                                <input type="text" class="form-control mb-1" value="<%=user.getEmail()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">NIC</label>
                                <input type="text" class="form-control mb-1" value="<%=user.getNic()%>">
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="account-info">
                        <div class="card-body pb-2">
                            <div class="form-group">
                                <label class="form-label">Bio</label>
                                <textarea class="form-control"
                                          rows="3">"Elevating Your Experience: Personalized Access to Tools and Resources, Tailored for Your Convenience - Your Journey Starts Here"</textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Age</label>
                                <input type="number" class="form-control" value="<%=user.getAge()%>">
                            </div>

                        </div>
                        <hr class="border-light m-0">
<%--                        <div class="card-body pb-2">--%>
<%--                            <h6 class="mb-4">Security</h6>--%>
<%--                            <div class="form-group">--%>
<%--                                <label class="form-label">Password</label>--%>
<%--                                <input type="text" class="form-control" value="<%=user.getPassword()%>">--%>
<%--                            </div>--%>

<%--                        </div>--%>
                    </div>

                    <div class="tab-pane fade" id="all-products">
                        <div class="card-body pb-2">
                            <div class="form-group">
                                <label class="form-label">About This Section</label>
                                <textarea class="form-control"
                                          rows="4">"Access and Manage All Products with Ease "</textarea>

                                <button type="button" class="btn btn-dark" style="margin-top: 15px"><a href="allProduct.jsp">View All Products</a></button>&nbsp;
                            </div>


                        </div>
                        <hr class="border-light m-0">
                    </div>
                    <div class="tab-pane fade" id="manage-products">
                        <div class="card-body pb-2">
                            <div class="form-group">
                                <label class="form-label">About This Section</label>
                                <textarea class="form-control"
                                          rows="4">"To manage a product in our database, we update its details like name, price, and quantity. This ensures our records stay accurate and our customers get the right information."</textarea>
                                <button type="button" class="btn btn-dark" style="margin-top: 15px"><a href="productform.jsp">Add a Product</a></button>&nbsp;
                            </div>
                            <div>
                            </div>



                        </div>
                    </div>
                </div>
                <div class="text-right mt-3">
                    <button type="button" class="btn btn-dark" style="margin-bottom: 5px;">Edit Profile</button>&nbsp;

                </div>
            </div>
            <% } else { %>
            <h1>No User found</h1>
            <%}%>


        </div>
    </div>
</div>

        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">

        </script>

</body>
</html>
