
package entity;


public class Courses_Registration {
    private int registration_id;
    private String department_id;
    private String course_id;
    private String teacher_id;
    private String student_batch;
    private String student_section;
    private String semester_id;
    private String registration_year;

    public Courses_Registration() {
    }

    public Courses_Registration(int registration_id, String department_id, String course_id, String teacher_id, String student_batch, String student_section, String semester_id, String registration_year) {
        this.registration_id = registration_id;
        this.department_id = department_id;
        this.course_id = course_id;
        this.teacher_id = teacher_id;
        this.student_batch = student_batch;
        this.student_section = student_section;
        this.semester_id = semester_id;
        this.registration_year = registration_year;
    }

    public Courses_Registration(String department_id, String course_id, String teacher_id, String student_batch, String student_section, String semester_id, String registration_year) {
        this.department_id = department_id;
        this.course_id = course_id;
        this.teacher_id = teacher_id;
        this.student_batch = student_batch;
        this.student_section = student_section;
        this.semester_id = semester_id;
        this.registration_year = registration_year;
    }

    public int getRegistration_id() {
        return registration_id;
    }

    public void setRegistration_id(int registration_id) {
        this.registration_id = registration_id;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getStudent_batch() {
        return student_batch;
    }

    public void setStudent_batch(String student_batch) {
        this.student_batch = student_batch;
    }

    public String getStudent_section() {
        return student_section;
    }

    public void setStudent_section(String student_section) {
        this.student_section = student_section;
    }

    public String getSemester_id() {
        return semester_id;
    }

    public void setSemester_id(String semester_id) {
        this.semester_id = semester_id;
    }

    public String getRegistration_year() {
        return registration_year;
    }

    public void setRegistration_year(String registration_year) {
        this.registration_year = registration_year;
    }
    
}
