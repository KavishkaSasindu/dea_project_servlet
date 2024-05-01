<%@ page import="models.AdminModel" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.AdminDao" %><%--
  Created by IntelliJ IDEA.
  User: sasin
  Date: 5/1/2024
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
<div class="inner" style="width: 100%; height: 90vh; display: flex; justify-content: center; align-items: center">
    <div class="outer" style="width: 90%;height: 100%;">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>

                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>

            <%
                List<AdminModel> userList = List.of();
                try {
                    AdminDao userDao = new AdminDao();
                    userList = userDao.getAllAdmins();
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println(e.getMessage());
                }

                for (AdminModel userData : userList) {
                    System.out.println(userData);


            %>
            <tr>


                <th scope="row"><%=userData.getId()%>
                </th>
                <td><%=userData.getName()%>
                </td>
                <td><%=userData.getEmail()%>
                </td>

                <td style="display: flex">
                    <form action="deleteAdmin" method="post" style="margin-left: 10px">
                        <input type="hidden" name="id" value="<%=userData.getId()%>">
                        <button type="submit" class="btn btn-dark" data-toggle="modal" data-target="#exampleModal"
                                data-whatever="@mdo">Delete
                        </button>
                    </form>
                </td>


            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
