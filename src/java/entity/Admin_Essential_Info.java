package entity;

public class Admin_Essential_Info {//Start Admin_Essential_Info Class

    private String admin_id;
    private String admin_name;
    private String admin_email;
    private String admin_password;
    private String admin_gender;
    private String admin_picture;
    private String admin_status;

    public Admin_Essential_Info() {
    }//Default Constructor.

    public Admin_Essential_Info(String admin_id, String admin_name, String admin_email, String admin_password, String admin_gender,
            String admin_picture, String admin_status) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.admin_email = admin_email;
        this.admin_password = admin_password;
        this.admin_gender = admin_gender;
        this.admin_picture = admin_picture;
        this.admin_status = admin_status;
    }//Constructor End.

    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_email() {
        return admin_email;
    }

    public void setAdmin_email(String admin_email) {
        this.admin_email = admin_email;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    public String getAdmin_gender() {
        return admin_gender;
    }

    public void setAdmin_gender(String admin_gender) {
        this.admin_gender = admin_gender;
    }

    public String getAdmin_picture() {
        return admin_picture;
    }

    public void setAdmin_picture(String admin_picture) {
        this.admin_picture = admin_picture;
    }

    public String getAdmin_status() {
        return admin_status;
    }

    public void setAdmin_status(String admin_status) {
        this.admin_status = admin_status;
    }

}//End Admin_Essential_Info Class
