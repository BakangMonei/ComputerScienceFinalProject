package Beans;

public class programmeCourse {
    // Attributes
    int id;
    double rate;
    String name, institution, yop, imgurl;

    // Super Constructor
    public programmeCourse(){
        super();
    }

    // Constructor
    public programmeCourse(int id, double rate, String name, String institution, String yop, String imgurl) {
        this.id = id;
        this.rate = rate;
        this.name = name;
        this.institution = institution;
        this.yop = yop;
        this.imgurl = imgurl;
    }

    // Getters
    public int getId() {
        return id;
    }

    public double getRate() {
        return rate;
    }

    public String getName() {
        return name;
    }

    public String getInstitution() {
        return institution;
    }

    public String getYop() {
        return yop;
    }

    public String getImgurl() {
        return imgurl;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public void setYop(String yop) {
        this.yop = yop;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
}
