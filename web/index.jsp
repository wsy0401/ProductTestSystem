<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/10
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
  </head>
  <body>
  <form action="LoginServlet" method="post">

    用户名：<input name="username" type="text">
    密码：<input name="password" type="password">
    <input type="submit" value="submit">
  </form>
  </body>
</html>
