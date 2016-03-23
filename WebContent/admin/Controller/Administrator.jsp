<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%
    String name = "admin"; /* 名称 */
    String pwd  = "admin"; /* 密码 */

    String username = request.getParameter("username");
    String password = request.getParameter("passwd");
    
    if (username.equals(name) && password.equals(pwd)) {
        out.println("{\"accessGranted\":true,\"errors\":\"\"}");
    } else {
        out.println("{\"accessGranted\":false,\"errors\":\"账号错误！\"}");
    }


%>
