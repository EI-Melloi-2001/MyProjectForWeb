<%--
  Created by IntelliJ IDEA.
  User: 吕 嘉鑫
  Date: 2021/9/23
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("maddy1381")&&password.equals("123456")){
        out.print("你已经登录，欢迎"+username+"进入此页面!");
        session.setAttribute("username",username);
        out.println("Please enjoy CSGO Hightlight~");
%>
    <a href="logout.jsp">注销</a>

<div style="text-align: center;">
    <video width="800" height="600" controls autoplay>
        <source src="201902909.mp4" type="video/mp4">
    </video>
</div>

<% }
else{
    out.print("用户名或密码不正确，3秒钟之后重新登录");
    response.setHeader("refresh","3;url='login.jsp'");
}
%>
</body>
</html>
