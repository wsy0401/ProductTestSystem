package cn.com.ennoconn.Servlet;

import cn.com.ennoconn.Bean.User;
import cn.com.ennoconn.Dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.websocket.Session;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            //TODO 这里是当session存在在当前request中时，直接跳转到homepage
        } else {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
//      System.out.println(username+" " + password);
            UserDao userDao = new UserDao();
            User user = userDao.getUser(username, password);
            if (user == null) {
                //TODO 显示用户名或密码错误
            }
            //设置session
            session = request.getSession();
            session.setAttribute("username",username);
            session.setAttribute("password",password);

            session.setMaxInactiveInterval(30*60);  //setting session to expiry in 30 minutes. 单位second
            //TODO 如果单纯只是登录而不用像淘宝那样在未登录的情况下，显示用户名，那么session就完全够用了，cookie的相关功能之后完成
//            Cookie[] cookies=request.getCookies();
//            if(cookies!=null) {
//                //设置Cookie，setMaxAge是设置Cookie的失效时间，单位为s
//                Cookie userNameCookie = new Cookie("username", username);
//                userNameCookie.setMaxAge(60 * 60 * 24 * 30);  //这里设置cookie的失效时间为30天
//                userNameCookie.setPath("/");    //这里设置的是这个cookie可以被当前项目中的那些servlet所访问，/代表所有的servlet均可访问
//                response.addCookie(userNameCookie);
//            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
