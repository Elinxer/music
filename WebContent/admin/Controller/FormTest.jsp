<%@ page contentType="text/html;charset=utf-8" %>
<%
    Cookie cookie    = null;
    Cookie[] cookies = null;
    // 获取cookies的数据,是一个数组
    cookies = request.getCookies();
    if( cookies != null ){
        out.println("<h2> Found Cookies Name and Value</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            out.print("Name : " + cookie.getName( ) + ",  ");
            out.print("Value: " + cookie.getValue( )+" <br/>");
      }
      out.print("<hr>");
    }else{
        out.println("<h2>No cookies founds</h2>");
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>方法</title>
    </head>
    <body>
        <form class="form-group" action="Administrator.jsp" method="post">
            <input type="text" name="username" value="admin">
            <input type="text" name="passwd" value="admin">

            <input type="submit" name="sub" value="sub">
        </form>
    </body>
</html>
