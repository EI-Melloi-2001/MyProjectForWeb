<%--
  Created by IntelliJ IDEA.
  User: 吕 嘉鑫
  Date: 2021/9/23
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (session.getAttribute("username")==null){
        out.print("你还没有登录，3秒钟之后重新登录");
        response.setHeader("refresh","3;url='index.jsp'");
    }
    else{
%>
     欢迎<%=(String)session.getAttribute("username")%>
     <br/>
     <br/>
<a href="logout.jsp">注销</a>
<%}%>
