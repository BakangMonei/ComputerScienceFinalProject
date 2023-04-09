<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 04/04/2023
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
  <title>File Explorer</title>
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
<h1>File Explorer</h1>
<table>
  <%
    String path = request.getParameter("path");
    if(path == null) {
      path = "C:\\Users\\cse20-018\\Desktop\\SoftwareProjectManagement\\src\\main\\ADMINPUBLISHED\\";
    }

    File directory = new File(path);
    File[] files = directory.listFiles();
    if(files != null) {
      for(File file : files) {
        String name = file.getName();
        String href = request.getContextPath() + "/FileDownloaderServlet?path=" + file.getAbsolutePath();
        // Modify this message to indicate the location where the file will be downloaded
        String message = "File will be downloaded to DOWNLOADS and saved as " + name;
  %>
  <tr>
    <td><%= name %></td>
    <td><a href="<%= href %>">Download</a></td>
  </tr>
  <%
      }
    }
  %>
</table>
</body>
</html>
