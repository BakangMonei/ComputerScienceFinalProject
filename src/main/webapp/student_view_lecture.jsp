<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 04/04/2023
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Database.MainDatabase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View Employee</title>
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
<div>
  <table class="table table-dark">
    <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">ID</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Address</th>
    </tr>
    </thead>
    <tbody>
    <%
      MainDatabase DB = new MainDatabase();
      ResultSet res = DB.getEmployeeList();
      while (res.next()){%>
    <tr>
      <th scope="row"></th>
      <td><%=res.getString("id")%></td>
      <td><%=res.getString("firstname")%></td>
      <td><%=res.getString("lastname")%></td>
      <td><%=res.getString("email")%></td>
      <td><%=res.getString("phone")%></td>
      <td><%=res.getString("address")%></td>
    </tr>
    <%}%>
    </tbody>
  </table>
</div>
</body>
</html>
