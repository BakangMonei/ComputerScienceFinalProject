<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Database.MainDatabase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View Students Marks</title>
  <link rel = "stylesheet" type = "text/css" href = "/style/admin_style.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
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
      <th scope="col">Email</th>
      <th scope="col">ID</th>

      <th scope="col">Subject1</th>
      <th scope="col">Mark1</th>

      <th scope="col">Subject2</th>
      <th scope="col">Mark2</th>

      <th scope="col">Subject3</th>
      <th scope="col">Mark3</th>

      <th scope="col">Subject4</th>
      <th scope="col">Mark4</th>

      <th scope="col">Subject5</th>
      <th scope="col">Mark5</th>

      <th scope="col">Subject6</th>
      <th scope="col">Mark6</th>

      <th scope="col">Subject7</th>
      <th scope="col">Mark7</th>

      <th scope="col">Subject8</th>
      <th scope="col">Mark8</th>

      <th scope="col">Average</th>
    </tr>
    </thead>
    <tbody>
    <%
      MainDatabase DB = new MainDatabase();
      ResultSet res = DB.getStudentGradeList();
      while (res.next()){%>
    <tr>
      <th scope="row"></th>
      <td><%=res.getString("email")%></td>
      <td><%=res.getString("id")%></td>
      <td><%=res.getString("subject1")%></td>
      <td><%=res.getString("mark1")%></td>
      <td><%=res.getString("subject2")%></td>
      <td><%=res.getString("mark2")%></td>
      <td><%=res.getString("subject3")%></td>
      <td><%=res.getString("mark3")%></td>
      <td><%=res.getString("subject4")%></td>
      <td><%=res.getString("mark4")%></td>
      <td><%=res.getString("subject5")%></td>
      <td><%=res.getString("mark5")%></td>
      <td><%=res.getString("subject6")%></td>
      <td><%=res.getString("mark6")%></td>
      <td><%=res.getString("subject7")%></td>
      <td><%=res.getString("mark7")%></td>
      <td><%=res.getString("subject8")%></td>
      <td><%=res.getString("mark8")%></td>
    </tr>
    <%}%>
    </tbody>
  </table>
</div>
</body>
