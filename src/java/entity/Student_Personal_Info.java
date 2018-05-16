package entity;

import java.util.Date;

public class Student_Personal_Info {

    private String student_id;
    private String national_id;
    private String father_name;
    private String mother_name;
    private Date birth_day;
    private String blood_group;
    private String religious_views;

    public Student_Personal_Info() {
    }

    public Student_Personal_Info(String student_id, String national_id, String father_name, String mother_name, Date birth_day, String blood_group, String religious_views) {
        this.student_id = student_id;
        this.national_id = national_id;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.birth_day = birth_day;
        this.blood_group = blood_group;
        this.religious_views = religious_views;
    }

    public String getStudent_id() {
        return student_id;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public String getNational_id() {
        return national_id;
    }

    public void setNational_id(String national_id) {
        this.national_id = national_id;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

    public Date getBirth_day() {
        return birth_day;
    }

    public void setBirth_day(Date birth_day) {
        this.birth_day = birth_day;
    }

    public String getBlood_group() {
        return blood_group;
    }

    public void setBlood_group(String blood_group) {
        this.blood_group = blood_group;
    }

    public String getReligious_views() {
        return religious_views;
    }

    public void setReligious_views(String religious_views) {
        this.religious_views = religious_views;
    }

}
