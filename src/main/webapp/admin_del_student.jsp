<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 21/02/2023
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Model.Database.MainDatabase" %>


<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>

    <link rel = "stylesheet" type = "text/css" href = "/style/authentication_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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

<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <form action="deleteServlet" method="post">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <div class="mb-md-5 mt-md-4 pb-2">
                                <h2 class="fw-bold mb-2 text-uppercase">Delete Student</h2>
                                <p class="text-white-50 mb-5">Enter the ID of the record to be deleted:</p>
                                <% if (request.getParameter("message") != null) { %>
                                <div><%= request.getParameter("message") %></div>
                                <% } %>
                                <div class="form-outline form-white mb-4">
                                    <input name="id" type="text" class="form-control form-control-lg text-center" placeholder="Enter Student ID here"/>
                                </div>
                                <button class="btn btn-outline-light btn-lg px-5" type="submit">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>

</body>
</html>
