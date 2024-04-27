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
    <link rel="stylesheet" href="./css/table.css">
</head>
<body>
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
                try{
                    UserDao userDao = new UserDao();
                    userList = userDao.getAllUsers();
                }catch(Exception e){
                    e.printStackTrace();
                    System.out.println(e.getMessage());
                }

                for(User userData:userList){
                    System.out.println(userData);


            %>
            <tr>


                <th scope="row"><%=userData.getId()%></th>
                <td><%=userData.getFirstName()%></td>
                <td><%=userData.getLastName()%></td>
                <td><%=userData.getEmail()%></td>
                <td><%=userData.getNic()%></td>
                <td><%=userData.getAge()%></td>
                <td>
                    <button class="btn btn-primary">Update</button>
                    <button class="btn btn-primary">Delete</button>
                </td>


            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
