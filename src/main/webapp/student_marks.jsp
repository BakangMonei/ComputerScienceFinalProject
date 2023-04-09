<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 21/02/2023
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Student Marks</title>
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
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                    <div class="card-body p-4 p-md-5">
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Add Your Marks</h3>
                        <form action="studentServlet" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="email" type="text" id="email" class="form-control form-control-lg" placeholder="Email"/>
                                        <label class="form-label" for="email">Email</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="id" type="text" id="ID" class="form-control form-control-lg" placeholder="ID"/>
                                        <label class="form-label" for="ID">ID</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Subject 1 & 2 -->
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="subject1" type="text" id="SUBJECT1" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark1" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT1">Subject1</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="subject2" type="text" id="SUBJECT2" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark2" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT2">Subject2</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Subject 3 & 4 -->
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="subject3" type="text" id="SUBJECT3" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark3" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT3">Subject3</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="subject4" type="text" id="SUBJECT4" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark4" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT4">Subject4</label>
                                    </div>
                                </div>
                            </div>

                            <!-- Subject 5 & 6 -->
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="subject5" type="text" id="SUBJECT5" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark5" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT5">Subject5</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="subject6" type="text" id="SUBJECT6" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark6" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT6">Subject6</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Subject 7 & 8 -->
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="subject7" type="text" id="SUBJECT7" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark7" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT7">Subject7</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="subject8" type="text" id="SUBJECT8" class="form-control form-control-lg" placeholder="Subject"/>
                                        <input name="mark8" type="number" class="form-control form-control-lg" placeholder="Point Obtained">
                                        <label class="form-label" for="SUBJECT8">Subject8</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-4 d-flex align-items-center">
                                    <input class="btn btn-primary btn-lg" type="submit" value="Submit" />
                                </div>

                                <div class="col-md-6 mb-4 d-flex align-items-center">
                                    <input class="btn btn-primary btn-lg" type="submit" value="Back" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
