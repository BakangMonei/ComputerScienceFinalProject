<%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 04/04/2023
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
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
<center>
    <h1>The user that you entered does not exist</h1>
</center>
</body>
</html>
