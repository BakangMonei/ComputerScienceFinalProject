package Beans;

public class FileInfo {
    private String name;
    private long size, lastModified;
    private String path;

    public FileInfo(String name, long size, long lastModified, String path) {
        this.name = name;
        this.size = size;
        this.lastModified = lastModified;
        this.path = path;
    }

    public String getName() {
        return name;
    }

    public long getSize() {
        return size;
    }

    public long getLastModified() {
        return lastModified;
    }

    public String getPath() {
        return path;
    }
}

