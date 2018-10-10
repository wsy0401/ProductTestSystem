package cn.com.ennoconn.Servlet;

import cn.com.ennoconn.Dao.AdminLoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("loginName");
        String password = request.getParameter("loginpassword");
//		System.out.println("loginName:"+username+" loginpassword: "+password);
        AdminLoginDao adminLoginDao = new AdminLoginDao();
        if (adminLoginDao.login(username, password)) {
            response.sendRedirect("AdminLoginSuccess.jsp");
        } else {
            response.sendRedirect("AdminLoginPage.jsp?error_message=\"incorrect username or password\"");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
