package cn.com.ennoconn.Bean;

//对应数据库表为Administrator
public class Adminstrator {
    /*
     * username是数据库AdminDB中表Adminstrator中的username
     * password是password
     * shortNo是shortno
     * telephone是telephone
     * email是email
     */
    //username varchar(255) not null primary key
    private String username;
    //password varchar(255) not null
    private String password;
    //shortno varchar(20)
    private String shortNo;
    //telephone varchar(20)
    private String telephone;
    //email varchar(255)
    private String email;

    public String getUsername() {
        return username;
    }

    public Adminstrator() {
        super();
    }

    public Adminstrator(String username, String password, String shortNo,
                        String telephone, String email) {
        super();
        this.username = username;
        this.password = password;
        this.shortNo = shortNo;
        this.telephone = telephone;
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getShortNo() {
        return shortNo;
    }

    public void setShortNo(String shortNo) {
        this.shortNo = shortNo;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
