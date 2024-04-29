<%@ page import="models.User" %>
<%@ page import="dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: PEMIDU HERATH
  Date: 4/27/2024
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UpdateUser</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/updatePage.css">
</head>
<body>

<h1>User Profile</h1>
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
<p>Email: <%= user.getEmail() %></p>
<p>First Name: <%= user.getFirstName() %></p>
<p>Last Name: <%= user.getLastName() %></p>
<% } else { %>
<h1>No User found</h1>
<%}%>
</body>
</html>
