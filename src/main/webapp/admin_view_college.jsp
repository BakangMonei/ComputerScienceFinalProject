<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 21/02/2023
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Database.MainDatabase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Universities</title>
    <link rel = "stylesheet" type = "text/css" href = "/style/admin_style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <div class="col-md-6 mb-4 d-flex align-items-center">
        <input class="btn btn-primary btn-lg" type="submit" value="Go Back" onclick="goBack()"/>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </div>
</head>
<body>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col"></th>
        <th scope="col">ID</th>
        <th scope="col">UniversityName</th>
        <th scope="col">Location</th>
    </tr>
    </thead>
    <tbody>
    <%
        mainDatabase DB = new mainDatabase();
        ResultSet res = DB.getInstituteList();
        while (res.next()){%>
    <tr>
        <th scope="row"></th>
        <td><%=res.getString("id")%></td>
        <td><%=res.getString("universityName")%></td>
        <td><%=res.getString("Location")%></td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>