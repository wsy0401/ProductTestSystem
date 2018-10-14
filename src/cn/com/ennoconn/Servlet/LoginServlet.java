package cn.com.ennoconn.Servlet;

import cn.com.ennoconn.Bean.User;
import cn.com.ennoconn.Dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password = request.getParameter("password");
//      System.out.println(username+" " + password);
        UserDao userDao=new UserDao();
        User user=userDao.getUser(username,password);
        if (user==null){
            //TODO 显示用户名或密码错误
        }
        //TODO 用户名密码正确正常跳转到HomePage并设置session等信息
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
