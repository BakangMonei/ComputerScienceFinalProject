<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 20/02/2023
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Sign Up</title>

  <link rel = "stylesheet" type = "text/css" href = "/style/authentication_style.css">

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
<body class="gradient-custom">
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-3 pb-2 pb-md-0 mb-md-5">Sign Up</h3>
            <form action="SignUpServlet" method="post">
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" name="firstName" class="form-control form-control-lg" placeholder="First Name"/>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" name="lastName" class="form-control form-control-lg" placeholder="Last Name"/>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" name="email" class="form-control form-control-lg" placeholder="Email"/>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="password" name="password" class="form-control form-control-lg" placeholder="Password"/>
                  </div>
                </div>
              </div>

              <h4 class="mb-2 pb-2 pb-md-0 mb-md-5">Select 3 Preferred Modules</h4>

              <div class="row">
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                  <input type="checkbox" class="btn-check" id="CS" autocomplete="off" name="genre" value="Discrete Mathematics">
                  <label class="btn btn-outline-primary" for="CS">Discrete Mathematics</label>

                  <input type="checkbox" class="btn-check" id="fin" autocomplete="off" name="genre" value="Programming Principles">
                  <label class="btn btn-outline-primary" for="fin">Programming Principles</label>

                  <input type="checkbox" class="btn-check" id="agriculture" autocomplete="off" name="genre" value="Introductory Concepts of Probability">
                  <label class="btn btn-outline-primary" for="agriculture">Introductory Concepts of Probability</label>

                  <input type="checkbox" class="btn-check" id="cima" autocomplete="off" name="genre" value="Data Structures">
                  <label class="btn btn-outline-primary" for="cima">Data Structures</label>
                </div>
              </div>
              <div class="row">
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                  <input type="checkbox" class="btn-check" id="acca" autocomplete="off" name="genre" value="Android Programming">
                  <label class="btn btn-outline-primary" for="acca">Android Programming</label>

                  <input type="checkbox" class="btn-check" id="cips" autocomplete="off" name="genre" value="Functional Programming">
                  <label class="btn btn-outline-primary" for="cips">Functional Programming</label>

                  <input type="checkbox" class="btn-check" id="llb" autocomplete="off" name="genre" value="Database Concepts">
                  <label class="btn btn-outline-primary" for="llb">Database Concepts</label>

                  <input type="checkbox" class="btn-check" id="engineering" autocomplete="off" name="genre" value="Systems Programming">
                  <label class="btn btn-outline-primary" for="engineering">Systems Programming</label>
                </div>
              </div>

              <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Submit" />
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