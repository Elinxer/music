<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%!

    /* 获取当前时间戳，10位长，针对mysql */
    public String getNowTime() {
    	Date date = new Date();
	    long time = date.getTime();
	    //mysq 时间戳只有10位 要做处理
	    String createTime = time + "";
	    createTime = createTime.substring(0, 10);
    	return createTime;
    }

    /* 获取客户端ip地址 */
    public String getClientIP() {
        String ip = "127.0.0.1";
        // if (request.getHeader("x-forwarded-for") == null) {
        //     ip = request.getRemoteAddr();
        // }
        //     ip = request.getHeader("x-forwarded-for");
        // }
        return ip;
    }

%>
<%
	//此进行连接数据库
	String url="jdbc:mysql://127.0.0.1:3306/music"; //test为数据库名称
	String dbuser="root"; //数据库账户
	String dbpwd="root"; //数据库密码
	try
	{
		Class.forName("com.mysql.jdbc.Driver"); //加载驱动 JspStudy
	}
	catch (ClassNotFoundException e)
	{
		e.printStackTrace();
	}
	//取得数据库连接conn JspStudy
	Connection conn = DriverManager.getConnection(url, dbuser, dbpwd);

%>


<%
    /* 获取提交动作 */
    String action   = request.getParameter("action");

	String errorMessage = "";

	/* 添加管理员 */
    if (action.equals("AddAdministrator")) {
        PreparedStatement ps=null;
        ResultSet result = null;
    	try
    	{
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            if (username == "") {
                out.println("请输入管理员名称！");
                response.sendRedirect("../addAdministrator.jsp");
            } else if (password == "") {
                out.println("管理员密码！");
                response.sendRedirect("../addAdministrator.jsp");
            }
    		String sql="insert into music_user(`user_id`, `user_name`, `user_password`, `user_email`,`user_create_time`,`user_last_login_time`,`user_last_login_ip`)values(null, '"+username+"', '"+password+"', '"+email+"',"+getNowTime()+","+getNowTime()+",'"+getClientIP()+"');";
            String getSql = "select `user_name` from music_user where user_name='"+username+"'";

            ps = conn.prepareStatement(getSql);
    		result = ps.executeQuery();
            if (result.next() == false) {
                ps = conn.prepareStatement(sql);
        		ps.executeUpdate(sql); /* 插入数据*/
                out.println("添加成功！");
            } else {
                out.println("管理员已经存在！");
            }
            //out.println(ps);

    	}
    	catch (SQLException e)
    	{
    		e.printStackTrace();
    	}
        out.println(errorMessage);
    }

	/* 管理员登陆 */
    if (action.equals("Login")) {
        String username = request.getParameter("username");/* 管理员名称 */
        String password = request.getParameter("passwd");/* 密码 */
        //String username = "admin";
        //String password = "admin";

        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
        	String sql="select * from music_user where user_name='"+username+"' and user_password='"+password+"';";
    		//out.println(sql);
    		ps = conn.prepareStatement(sql);
    		rs = ps.executeQuery();
            if(!rs.next()) { /* 账号错误提示 */
                errorMessage = "{\"accessGranted\":false,\"errors\":\"登陆失败！\"}";
                out.println(errorMessage);
            } else {

                String userIDKey = new String("ADMIN_AUTH_KEY");
                String userID = new String(rs.getString("user_id"));
                session.setAttribute(userIDKey, userID); /* 保存登陆session */

                errorMessage = "{\"accessGranted\":true,\"errors\":\"匹配正确\"}";
                out.println(errorMessage);
            }
        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }








%>
