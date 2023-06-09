<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload your file</title>
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
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <div class="mb-md-5 mt-md-4 pb-2">
                                <div class="form-outline form-white mb-4">
                                    <input name="file" type="file" class="form-control form-control-lg text-center"/>
                                </div>
                                <div class="form-outline form-white mb-4">
                                    <input type="submit" class="form-control form-control-lg text-center" value="Upload"/>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<form action="UploadServlet" method="post" enctype="multipart/form-data">
    <input type="file" name="file"><br>
    <input type="submit" value="Upload"><br>
</form>
</body>
</html>
