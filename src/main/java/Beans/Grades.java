package Beans;

public class Grades {
    // attributes
    int id;
    String English, Setswana, Mathematics, Chemistry, Physics, Biology, Option1, Option2;

    // SuperConstructor
    public Grades(){
        super();
    }

    // Constructors
    public Grades(int id, String english, String setswana, String mathematics, String chemistry, String physics, String biology, String option1, String option2) {
        this.id = id;
        English = english;
        Setswana = setswana;
        Mathematics = mathematics;
        Chemistry = chemistry;
        Physics = physics;
        Biology = biology;
        Option1 = option1;
        Option2 = option2;
    }

    // Getters & Setters
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getEnglish() {
        return English;
    }
    public void setEnglish(String english) {
        English = english;
    }
    public String getSetswana() {
        return Setswana;
    }
    public void setSetswana(String setswana) {
        Setswana = setswana;
    }
    public String getMathematics() {
        return Mathematics;
    }
    public void setMathematics(String mathematics) {
        Mathematics = mathematics;
    }
    public String getChemistry() {
        return Chemistry;
    }
    public void setChemistry(String chemistry) {
        Chemistry = chemistry;
    }
    public String getPhysics() {
        return Physics;
    }
    public void setPhysics(String physics) {
        Physics = physics;
    }
    public String getBiology() {
        return Biology;
    }
    public void setBiology(String biology) {
        Biology = biology;
    }
    public String getOption1() {
        return Option1;
    }
    public void setOption1(String option1) {
        Option1 = option1;
    }
    public String getOption2() {
        return Option2;
    }
    public void setOption2(String option2) {
        Option2 = option2;
    }
}
