package entity;

public class Student_Essential_Info {// Student_Essential_Info Class Start.

    private String student_id;
    private String student_name;
    private String student_email;
    private String student_password;
    private String student_gender;
    private String student_batch;
    private String department_id;
    private String student_section;
    private String student_picture;
    private String student_status;
    private String degree_id;

    public Student_Essential_Info() {
    }// Default Constructor.

    public Student_Essential_Info(String student_id, String student_name, String student_email, String student_password, String student_gender, String student_batch,
            String department_id, String student_section, String student_picture, String student_status, String degree_id) {

        this.student_id = student_id;
        this.student_name = student_name;
        this.student_email = student_email;
        this.student_password = student_password;
        this.student_gender = student_gender;
        this.student_batch = student_batch;
        this.department_id = department_id;
        this.student_section = student_section;
        this.student_picture = student_picture;
        this.student_status = student_status;
        this.degree_id = degree_id;
    }// Constructor.

    public String getStudent_id() {
        return student_id;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getStudent_email() {
        return student_email;
    }

    public void setStudent_email(String student_email) {
        this.student_email = student_email;
    }

    public String getStudent_password() {
        return student_password;
    }

    public void setStudent_password(String student_password) {
        this.student_password = student_password;
    }

    public String getStudent_gender() {
        return student_gender;
    }

    public void setStudent_gender(String student_gender) {
        this.student_gender = student_gender;
    }

    public String getStudent_batch() {
        return student_batch;
    }

    public void setStudent_batch(String student_batch) {
        this.student_batch = student_batch;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getStudent_section() {
        return student_section;
    }

    public void setStudent_section(String student_section) {
        this.student_section = student_section;
    }

    public String getStudent_picture() {
        return student_picture;
    }

    public void setStudent_picture(String student_picture) {
        this.student_picture = student_picture;
    }

    public String getStudent_status() {
        return student_status;
    }

    public void setStudent_status(String student_status) {
        this.student_status = student_status;
    }

    public String getDegree_id() {
        return degree_id;
    }

    public void setDegree_id(String degree_id) {
        this.degree_id = degree_id;
    }

}// Student_Essential_Info Class End.
