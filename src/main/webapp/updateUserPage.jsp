<%@ page import="models.User" %>
<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: sasin
  Date: 4/29/2024
  Time: 2:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update | User</title>
    <link rel="stylesheet" href="./css/upatePage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>


<%
User user =null;

int userId = Integer.parseInt(request.getParameter("userId"));

    UserDao userDao = new UserDao();
    user = userDao.getOneUser(userId);

%>
<div class="update-outer">
    <div class="update-inner">
        <div class="form-inner">
            <form>
                <h2 class="heading-para">Update Page</h2>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">First Name :</label>
                    <input type="email" class="form-control" id="exampleInputFirstName" aria-describedby="emailHelp" value="<%=user.getFirstName()%>">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Last Name :</label>
                    <input type="email" class="form-control" id="exampleInputLastName" aria-describedby="emailHelp" value="<%=user.getLastName()%>">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=user.getEmail()%>">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">NIC :</label>
                    <input type="email" class="form-control" id="exampleInputNIC" aria-describedby="emailHelp" value="<%=user.getNic()%>">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Age :</label>
                    <input type="email" class="form-control" id="exampleInputAge" aria-describedby="emailHelp" value="<%=user.getAge()%>">
                </div>


                <button type="submit" class="btn btn-dark">Submit</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
