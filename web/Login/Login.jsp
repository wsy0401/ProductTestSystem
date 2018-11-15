<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/10
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" href="style.css" type="text/css">
  </head>
  <body>
  <div class="header"></div>
  <div class="content">
      <div class="loginarea">
          <div class="pleaselogin">
              <span>PLEASE LOGIN</span>
          </div>
          <form class="loginform">
              <input class="username" type="text" autofocus name="username" placeholder="Username" autocomplete="off">
              <input class="password" type="password" name="password" placeholder="Password" autocomplete="off">
              <input type="checkbox" id="rememberme" style="display: none">
              <label for="rememberme">Remember me</label>
              <img src="Separator.png">
              <a href="">Forgot Password</a>
              <input type="button" value="LOGIN">
          </form>
      </div>
  </div>
  <div class="footer"></div>


  </form>
  </body>
</html>
