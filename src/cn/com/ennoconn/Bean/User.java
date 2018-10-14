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
    public User(){}

    public void setUserID(int userID) {
        UserID = userID;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }
}
