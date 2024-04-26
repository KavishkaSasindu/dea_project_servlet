<%@ page import="java.sql.Connection" %>
<%@ page import="db.DbConnection" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <%
        Connection conn ;
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    %>

    <p>This is my db connection</p>
    <h3><%= conn%></h3>
</body>
</html>