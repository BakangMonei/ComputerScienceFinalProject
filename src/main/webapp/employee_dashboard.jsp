<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 19/02/2023
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Dashboard</title>

    <link rel = "stylesheet" type = "text/css" href = "/style/admin_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body background="images/admin.png">

<div class="d-flex justify-content-center h-25">
    <center>
        <!-- Students -->
        <br><label><b><h1>Students</h1></b></label></br>
        <a href="signUp.jsp" class="btn btn-primary" role="button">Add Student</a> <!-- Works -->
        <a href="admin_del_student.jsp" class="btn btn-primary" role="button">Delete Student</a> <!-- Works -->
        <a href="admin_view_student.jsp" class="btn btn-primary" role="button">View Student</a> <!-- Works -->
        <a href="student_view_marks.jsp" class="btn btn-primary" role="button">View Student Marks</a><br> <!-- Works -->


        <!-- Faculty -->
        <br><label><b><h1>Computer Science Department</h1></b></label></br>
        <a href="student_upload_file.jsp" class="btn btn-primary" role="button">Add Student Documents</a> <!-- Works -->
        <a href="admin_publish.jsp" class="btn btn-primary" role="button">Publish Student Documents</a><!-- Works -->
        <a href="admin_achieve_documents.jsp" class="btn btn-primary" role="button">Archive Documents</a>
        <a href="file_explorer.jsp" class="btn btn-primary" role="button">Admin View Documents</a><br>
        <!-- View Index Page -->
        <br><label><b><h1>Index Page</h1></b></label></br>
        <a href="view_index.jsp" class="btn btn-primary" role="button">All Students Documents</a><br>

        <br><label><b><h1>Other Faculties</h1></b></label></br>
        <a href="admin_add_college.jsp" class="btn btn-primary" role="button">Add Faculty</a><!-- Works -->
        <a href="admin_del_college.jsp" class="btn btn-primary" role="button">Delete Faculty</a>
        <a href="admin_view_college.jsp" class="btn btn-primary" role="button">View Faculty</a><br>

        <br><label><b></b></label></br>
        <form id="logout" name="logout" action="LogoutServlet" method="post" >
            <button type="submit" class="btn btn-primary" role="button">Logout</button>
        </form>
    </center>
</div>

</body>
</html>