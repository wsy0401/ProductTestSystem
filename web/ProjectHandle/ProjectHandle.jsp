<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/10
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Handle Project</title>
    <link href="../CommonCSS/style.css" rel="stylesheet" type="text/css">
    <script src="../jquery-3.3.1.js"></script>
    <script>
        /*
        * 这里的作用是自动设置Frame的高度，前提条件是iframe的src和当前文件在同一个顶级域名下
        * 具体请参考http://caibaojian.com/iframe-adjust-content-height.html
        */
        /*
		 * When the iframe is on a different subdomain, uncomment the following line
		 * and change "example.com" to your domain.
		 */
        // document.domain = "example.com";
        function setIframeHeight() {
            var iframe=document.getElementById("ProjectHandleIframe");
            if (iframe) {
                var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                if (iframeWin.document.body) {
                    iframe.paddingTop=20+"px";
                    iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                }
            }
        };
        window.onresize=function () {
            setIframeHeight();
        }
    </script>
</head>
<body>
<%--这里是整个页面的头部--%>
<div class="header">
    <div class="header_resize">
        <div style="padding-top: 15px">
            <img src="../CommonImages/LOGO.jpg" width="180" height="36" style="float: left;">
            <span style="float:left; padding-top: 9px;">&nbsp;&nbsp;&nbsp;
                <label style="font-size: 32px;font-weight: bold;color: #3a90c9;">
                iDesign
                </label>
            </span>
            <div align="right" style="padding-right: 30px; padding-top: 15px; font-size: 18px;">
                <a href="javascript: void(0)" onclick="">
                    <img src="../CommonImages/Icon_Announcement.png" title="News" width="30" height="30" hspace="5">
                </a>
                <a href="javascript: void(0)" onclick="">
                    <img src="../CommonImages/Home1.png" title="Home" width="30" height="30" hspace="5">
                </a><a href="javascript: void(0)" onclick="">
                <img src="../CommonImages/Icon_Manual.png" title="User Guide" width="30" height="30" hspace="5">
            </a>
                <a href="javascript: void(0)" onclick="">
                    <img src="../CommonImages/Icon_Collaborative_Platform.png" title="R&D Collaborative Platform"
                         width="30"
                         height="30" hspace="5">
                </a>
                <a href="javascript: void(0)" onclick="">
                    <img src="/CommonImages/personal_information.png" title="Personal Information" width="30"
                         height="30"
                         hspace="5">
                </a>
                <%--TODO 这里需要从session中读取当前用户的用户名--%>

            </div>
        </div>
    </div>
</div>


<%--这里是每个不同的页面的菜单--%>
<div id="menu">
    <ul class="nav">
        <li></li>
        <li></li>
        <li></li>
    </ul>

</div>
<div id="process" style="margin-top:20px"></div>
<iframe src="ProjectHandleFrame.jsp" id="ProjectHandleIframe" width="100%" frameborder="0" onload="setIframeHeight()"></iframe>
<%--这里是整个页面的尾部，会包含copyright等信息--%>
<div class="footer">
    <div class="footer-resize">
        <p class="Copyright">Best viewed with Google Chrome, Internet Explorer 11,&nbsp;&nbsp;Copyright &copy; 1983-2018
            Advantech Co., Ltd.</p>
        <p class="footer-nav">
            <a href="">Contact</a>
            |
            <a href="">Privacy</a>
        </p>

    </div>
</div>
</body>
</html>
