package cn.com.ennoconn.Bean;

public class Post {
    //Post.PostID int(11)
    private int PostID;
    //Post.PostName varchar(20)
    private String PostName;
    public Post(){}
    public int getPostID() {
        return PostID;
    }

    public void setPostID(int postID) {
        PostID = postID;
    }

    public String getPostName() {
        return PostName;
    }

    public void setPostName(String postName) {
        PostName = postName;
    }

    @Override
    public String toString() {
        return "Post{" +
                "PostID=" + PostID +
                ", PostName='" + PostName + '\'' +
                '}';
    }
}
