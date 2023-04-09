package Model.Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "adminUploadServlet", value = "/adminUploadServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 100
)
public class adminUploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        for(Part part : request.getParts()){
            part.write("C:\\Users\\cse20-018\\Desktop\\SoftwareProjectManagement\\src\\main\\ADMINPUBLISHED\\" + fileName);
        }
        response.getWriter().println("Successfully Uploaded");
    }
    private boolean isSimilar(String s1, String s2) {
        int n = s1.length();
        int m = s2.length();
        if (Math.abs(n - m) > 100) {
            // If the difference in string lengths is greater than 100, assume the strings are not similar
            return false;
        }
        int [][] dist = new int[n + 1][m + 1];
        for (int i = 0; i <= n; i ++) {
            dist[i][0] = i;
        }
        for (int j = 0; j <= m; j ++) {
            dist[0][j] = j;
        }
        for (int j = 1; j <= m; j ++) {
            for (int i = 1; i <= n; i ++) {
                int cost = s1.charAt(i - 1) == s2.charAt(j - 1) ? 0 : 1;
                dist[i][j] = Math.min(dist[i - 1][j] + 1, Math.min(dist[i][j - 1] + 1, dist[i - 1][j - 1] + cost));
            }
        }
        int maxLen = Math.max(n, m);
        double similarity = 1.0 - (double) dist[n][m] / maxLen;
        return similarity >= 0.8;
    }
    private boolean isPlagiarized(List<String> folderFilesContent, String uploadedFileContent) {
        for (String content : folderFilesContent) {
            if (isSimilar(content, uploadedFileContent)) {
                return true;
            }
        }
        return false;
    }
    private List<String> getFolderFilesContent(String folderPath) throws IOException {
        List<String> contents = new ArrayList<>();
        File folder = new File(folderPath);
        File[] files = folder.listFiles();
        for (File file : files) {
            if (file.isFile()) {
                try (BufferedReader br = new BufferedReader(new FileReader(file))) {
                    String line;
                    StringBuilder sb = new StringBuilder();
                    while ((line = br.readLine()) != null) {
                        sb.append(line);
                    }
                    contents.add(sb.toString());
                }
            }
        }
        return contents;
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(" ");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length()-1);
            }
        }
        return "";
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    /*
     * The 'isPlagiarized' method uses the 'isSimilar' method to compare the content of the uploaded file with the
     * content of other files in the specified folder.
     * It returns true if the uploaded file is similar to any of the files in the folder.
     * */
    // Method that reads the content of uploaded files and compares it with the content of other files in the specified folder:
    // Plagiarism detection algorithm- Levenshtein distance

    /*
     * Finally, the 'getFolderFilesContent' method reads the content of all files in the specified folder and returns a list of their contents as strings.
     * This method can be called in the JSP to retrieve the content of all files in the folder.
     * */


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}
