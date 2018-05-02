package bean;

import java.util.Date;

public class Customer {
    private String fullname;
    private String birthday;
    private String adress;
    private String image;

    public Customer (){}
    public Customer (String fullname, String birthday, String adress, String image){
        this.fullname = fullname;
        this.birthday = birthday;
        this.adress = adress;
        this.image = image;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "fullname='" + fullname + '\'' +
                ", birthday='" + birthday + '\'' +
                ", adress='" + adress + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
