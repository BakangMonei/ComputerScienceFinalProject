package Model.Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.*;

@WebServlet(name = "FileDownloaderServlet", value = "/FileDownloaderServlet")
public class FileDownloaderServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getParameter("path");
        File file = new File(path);
        FileInputStream inputStream = new FileInputStream(file);

        String filename = file.getName();
        String encodedFilename = URLEncoder.encode(filename, "UTF-8");

        // Modify this path to the location where you want to save the downloaded file
        String savePath = "C:\\Users\\cse20-018\\Downloads" + file.getName();
        Path saveFilePath = Paths.get(savePath);

        // Write the file to the desired location on the server's file system
        Files.copy(inputStream, saveFilePath);

        // Set the response headers to prompt the user to download the file
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + encodedFilename + "\"");
        response.setContentLength((int)file.length());

        // Write the file to the response output stream
        OutputStream outputStream = response.getOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
        while((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }
        inputStream.close();
        outputStream.close();
    }
}
