<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看歌曲</title>
</head>
<body>
	<table align="center" border=2>
		<tr>
			<td align="center">歌曲id</td>
			<td align="center">歌曲名字</td>
			<td align="center">歌曲歌手</td>
		</tr>
		<%
	//数据库连接
	//加载驱动com.mysql.jdbc.Driver 
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	//数据库用户名  
	String userName = "root";
	//密码  
	String userPasswd = "root";
	//数据库名  
	String dbName = "music"; 
	//表名  
	String tableName = "music_song"; 
	//建立连接 
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName+"?useUnicode=true&characterEncoding=utf8",
	userName,userPasswd);
	//创建Statement（负责执行sql语句）  
	Statement stmt= conn.createStatement();
	String sql="select `song_id`,`song_name`,`song_singer` from music_song;";
	ResultSet rs= stmt.executeQuery(sql);
		while(rs.next()){
			//依据数据库中的字段名打印数据  
			/*
			out.println(rs.getString("song_id"));
			out.println(rs.getString("song_name"));
			out.println(rs.getString("song_singer")+"<br>");
			*/
			String song_id=rs.getString("song_id");
			String song_name=rs.getString("song_name");
			String song_singer=rs.getString("song_singer");
	%>
		<%--这里是jsp片段 --%>

		<tr width=40>
			<td align="center"><%=song_id %></td>
			<td align="center"><%=song_name %></td>
			<td align="center"><%=song_singer %></td>
		</tr>


		<% 
				
			}
	rs.close();  
	stmt.close();  
	conn.close();
	%>
	</table>
</body>
</html>