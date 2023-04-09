<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %><%--
  Created by IntelliJ IDEA.
  User: cse20-018
  Date: 04/04/2023
  Time: 09:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detector</title>
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
<%-- Set the path to the folder containing the documents --%>
<%
    // Set the path to the folder containing the documents
  String folderPath = "C:\\Users\\cse20-018\\Desktop\\SoftwareProjectManagement\\src\\main\\resources\\";
  // Check if a file was uploaded
  if (request.getContentType() != null && request.getContentType().startsWith("multipart/form-data")) {
      // Get the uploaded file
      Part filePart = request.getPart("file");
      String fileName = filePart.getSubmittedFileName();
      String fileContent = "";
      try (Scanner scanner = new Scanner(filePart.getInputStream())) {
          while (scanner.hasNextLine()) {
              fileContent += scanner.nextLine();
          }
      }
      // Get the content of all files in the folder
      List<String> folderFilesContent = getFolderFilesContent(folderPath);
      // Check if the uploaded file is plagiarized
      boolean isPlagiarized = isPlagiarized(folderFilesContent, fileContent);
      if (isPlagiarized) {
          // Calculate the similarity percentage and get the names of the similar files
          List<String> similarFileNames = new ArrayList<>();
          for (File file : new File(folderPath).listFiles()) {
              if (!file.isDirectory() && !file.getName().equals(fileName)) {
                  try (Scanner scanner = new Scanner(file)) {
                      String fileContentStr = "";
                      while (scanner.hasNextLine()) {
                          fileContentStr += scanner.nextLine();
                      }
                      if (isSimilar(fileContent, fileContentStr)) {
                          similarFileNames.add(file.getName());
                      }
                  }
              }
          }
          // Calculate the similarity percentage
          double similarityPercentage = (double) similarFileNames.size() / (double) (new File(folderPath).listFiles().length - 1) * 100;
          // Display the results
          out.println("<h1>Plagiarism Detected!</h1>");
          out.println("<p>The uploaded file is similar to " + similarityPercentage + "% of the files in the folder:</p>");
          for (String similarFileName : similarFileNames) {
              out.println("<li>" + similarFileName + "</li>");
          }
      }

      else {
          out.println("<h1>No Plagiarism Detected!</h1>");
      }
  }


  //
%>
</body>
</html>
