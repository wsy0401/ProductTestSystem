package cn.com.ennoconn.Dao;

import cn.com.ennoconn.Bean.Dept;
import cn.com.ennoconn.Bean.Post;
import cn.com.ennoconn.Bean.User;
import cn.com.ennoconn.Utils.ProductTestSystemDBUtil;

import java.sql.*;

public class UserDao {
    private static final String TABLE = "User";
    private static final String COL_USERID = "UserID";
    private static final String COL_USERNAME = "username";
    private static final String COL_PASSWORD = "password";
    private static final String COL_EMAIL = "email";
    private static final String COL_TELEPHONE = "telephone";
    private static final String COL_POST = "post";
    private static final String COL_DEPT = "dept";
    //    private static final String url = "jdbc:mysql://localhost:3306/ProductTestSystem" + "?serverTimezone=GTM%2B8";
//    private static final String dbuser = "root";
//    private static final String dbpasswd = "123456";
    private User user = null;

    public User getUser(String username, String password) {
        PreparedStatement statement = null;
        ResultSet rs = null;
        Connection connection = null;
        try {
            //select * from User where username=? and password=?
            String userloginSQL = "select * from " + TABLE + " where username=? and password=?";
            connection = ProductTestSystemDBUtil.getConnection();
            statement = connection.prepareStatement(userloginSQL);
            statement.setString(1, username);
            statement.setString(2, password);
            rs = statement.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setUserID(rs.getInt(COL_USERID));
                user.setUsername(rs.getString(COL_USERNAME));
                user.setPassword(rs.getString(COL_PASSWORD));
                user.setTelephone(rs.getString(COL_TELEPHONE));
                user.setEmail(rs.getString(COL_EMAIL));
                user.setPost(new PostDAO().getPost(rs.getInt(COL_POST)));
                user.setDept(new DeptDAO().getDept(rs.getString(COL_DEPT)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ProductTestSystemDBUtil.exitQuery(rs,statement,connection);
        }
        return user;
    }
}
