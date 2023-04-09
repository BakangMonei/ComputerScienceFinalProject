package Model;

import java.io.*;
import java.util.*;

public class methodsClass {
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

    private boolean isSimilar(String s1, String s2) {
        int n = s1.length();
        int m = s2.length();
        if (Math.abs(n - m) > 5000) {
            // If the difference in string lengths is greater than 5000, assume the strings are not similar
            return false;
        }
        int[][] dist = new int[n+1][m+1];
        for (int i = 0; i <= n; i++) {
            dist[i][0] = i;
        }
        for (int j = 0; j <= m; j++) {
            dist[0][j] = j;
        }
        for (int j = 1; j <= m; j++) {
            for (int i = 1; i <= n; i++) {
                int cost = s1.charAt(i-1) == s2.charAt(j-1) ? 0 : 1;
                dist[i][j] = Math.min(dist[i-1][j] + 1, Math.min(dist[i][j-1] + 1, dist[i-1][j-1] + cost));
            }
        }
        int maxLen = Math.max(n, m);
        double similarity = 1.0 - (double)dist[n][m] / maxLen;
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
}