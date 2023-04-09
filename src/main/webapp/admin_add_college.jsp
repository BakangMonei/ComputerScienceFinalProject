<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add University</title>
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
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Add Classes Form</h3>
                        <form action="universityServlet" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input name="universityName" type="text" id="UNIname" class="form-control form-control-lg" />
                                        <label class="form-label" for="UNIname">Class Group Name</label>
                                    </div>
                                    <div class="form-outline">
                                        <input name="location" type="text" id="loc" class="form-control form-control-lg" />
                                        <label class="form-label" for="loc">Block</label>
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
