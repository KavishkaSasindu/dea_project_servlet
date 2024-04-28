<%@ page import="java.util.List" %>
<%@ page import="models.User" %>
<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 4/27/2024
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/table.css">
</head>
<body>


<%
    if (session != null && session.getAttribute("adminEmail") != null) {
        System.out.println("Admin Logged In");
    } else {
        response.sendRedirect("adminLogIn.jsp");
    }

%>
<div class="inner">
    <div class="outer">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">FirstName</th>
                <th scope="col">LastName</th>
                <th scope="col">Email</th>
                <th scope="col">Nic</th>
                <th scope="col">Age</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>

            <%
                List<User> userList = List.of();
                try {
                    UserDao userDao = new UserDao();
                    userList = userDao.getAllUsers();
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println(e.getMessage());
                }

                for (User userData : userList) {
                    System.out.println(userData);


            %>
            <tr>


                <th scope="row"><%=userData.getId()%>
                </th>
                <td><%=userData.getFirstName()%>
                </td>
                <td><%=userData.getLastName()%>
                </td>
                <td><%=userData.getEmail()%>
                </td>
                <td><%=userData.getNic()%>
                </td>
                <td><%=userData.getAge()%>
                </td>
                <td>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="@mdo">Update
                    </button>
                    <button class="btn btn-primary">Delete</button>
                </td>


            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Update User Here</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-first" class="col-form-label">First Name :</label>
                        <input type="text" class="form-control" id="recipient-first">
                    </div>
                    <div class="form-group">
                        <label for="recipient-last" class="col-form-label">Last Name :</label>
                        <input type="text" class="form-control" id="recipient-last">
                    </div>
                    <div class="form-group">
                        <label for="recipient-email" class="col-form-label">Email :</label>
                        <input type="email" class="form-control" id="recipient-email">
                    </div>
                    <div class="form-group">
                        <label for="recipient-nic" class="col-form-label">NIC:</label>
                        <input type="text" class="form-control" id="recipient-nic">
                    </div>
                    <div class="form-group">
                        <label for="recipient-age" class="col-form-label">Age :</label>
                        <input type="text" class="form-control" id="recipient-age">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-dark" type="submit">Update User</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>
