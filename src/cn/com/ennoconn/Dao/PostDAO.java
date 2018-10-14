package cn.com.ennoconn.Dao;

import cn.com.ennoconn.Bean.Post;
import cn.com.ennoconn.Utils.ProductTestSystemDBUtil;

import java.sql.*;

public class PostDAO {
    private static final String TABLE="Post";
    private static final String COL_POSTID="PostID";
    private static final String COL_POSTNAME="PostName";
//    private static final String url="jdbc:mysql://localhost:3306/ProductTestSystem"+"?serverTimezoneGTM%2B8";
//    private static final String dbuser="root";
//    private static final String dbpasswd="123456";
    private Post post = null;

    public Post getPost(int postID){
        PreparedStatement preparedStatement = null;
        ResultSet rs=null;
        //select * from Post where PostID = ?
        String postSQL="select * from "+ TABLE+" where " + COL_POSTID+" = ?";
        try {
            preparedStatement= ProductTestSystemDBUtil.getConnection().prepareStatement(postSQL);
            preparedStatement.setInt(1, postID);
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                post = new Post();
                post.setPostID(rs.getInt(COL_POSTID));
                post.setPostName(rs.getString(COL_POSTNAME));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(rs!=null){
                    rs.close();
                }
                if (preparedStatement!=null){
                    preparedStatement.close();
                }
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        return post;
    }

}
