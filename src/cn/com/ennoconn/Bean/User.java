package cn.com.ennoconn.Bean;

public class User {
    //User.UserID int(20)
    private int UserID;
    //User.username varchar(20)
    private String username;
    //User.password varchar(50)
    private String password;
    //User.telephone varchar(20)
    private String telephone;
    //User.email varchar(20)
    private String email;
    //User.post int(11) foreign key
    private Post post;
    //User.dept varchar(20) foreign key
    private Dept dept;
}
