<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Dashboard</title>

    <link rel = "stylesheet" type = "text/css" href = "/style/admin_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body background="images/student.png">
<div class="d-flex justify-content-center h-25">
    <center>
        <!-- Students -->
        <br><label><b>Student Dashboard</b></label></br>
        <a href="student_marks.jsp" class="btn btn-primary" role="button">Class Marks</a>
        <a href="student_view_lecture.jsp" class="btn btn-primary" role="button">View Lectures</a>
        <a href="" class="btn btn-primary" role="button">View Courses</a><br>

        <br><label><b> </b></label></br>
        <a href="student_complaint.jsp" class="btn btn-primary" role="button">Apply For Resubmission</a>
        <a href="" class="btn btn-primary" role="button">View My Profile</a>
        <a href="" class="btn btn-primary" role="button">Delete Account</a>
        <a href="" class="btn btn-primary" role="button"> Change Password</a><br>

        <br><label><b> </b></label></br>
        <a href="student_upload_file.jsp" class="btn btn-primary" role="button">Upload Document</a>
        <a href="file_explorer.jsp" class="btn btn-primary" role="button">Published Documents By Others</a><br/>
        <br><label><b> </b></label></br>
        <form id="logout" name="logout" action="LogoutServlet" method="post" >
            <button type="submit" class="btn btn-primary" role="button">Logout</button>
        </form>
    </center>
</div>
</body>