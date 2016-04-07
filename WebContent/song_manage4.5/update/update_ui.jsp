<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改歌曲界面</title>
</head>
<body>
	<form action="dodelete.jsp" method="post">
		<table align="center" border=1>
			<tr>
				<td align="center">歌曲id</td>
				<td align="center">歌曲名字</td>
				<td align="center">歌曲歌手</td>
				<td align="center">词曲作者</td>
				<td align="center">创作时间</td>
				<td align="center">歌曲时长</td>
				<td align="center">歌曲专辑</td>
				<td align="center">歌曲喜爱</td>
				<td align="center">歌曲文件</td>
				<td align="center">词曲文件</td>
				<td align="center">头像文件</td>
				<td align="center">图册文件</td>
				<td align="center">修改功能</td>
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
	String sql="select `song_id`,`song_name`,`song_singer`,`song_lyrics_author`,`song_creation_time`,`song_length`,`song_album`,`song_favorite`,`song_pictures`,`song_avatar`,`song_lyric`,`song_trace` from music_song;";
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
			String song_lyrics_author=rs.getString("song_lyrics_author");
			String song_creation_time=rs.getString("song_creation_time");
			String song_length=rs.getString("song_length");
			String song_album=rs.getString("song_album");
			String song_favorite=rs.getString("song_favorite");
			String song_pictures=rs.getString("song_pictures");
			String song_avatar=rs.getString("song_avatar");
			String song_trace=rs.getString("song_trace");
			String song_lyric=rs.getString("song_lyric");
			
	%>
			<%--这里是jsp片段 --%>

			<tr width=40>
				<td align="center"><%=song_id %></td>
				<td align="center"><%=song_name %></td>
				<td align="center"><%=song_singer %></td>
				<td align="center"><%=song_lyrics_author %></td>
				<td align="center"><%=song_creation_time %></td>
				<td align="center"><%=song_length %></td>
				<td align="center"><%=song_album %></td>
				<td align="center"><%=song_favorite %></td>
				<td align="center"><%=song_trace %></td>
				<td align="center"><%=song_lyric %></td>
				<td align="center"><%=song_avatar %></td>
				<td align="center"><%=song_pictures %></td>

				<td align="center"><a
					href="doupdate.jsp?song_id=<%=song_id%>&song_pictures=<%=song_pictures%>
				&song_avatar=<%=song_avatar%>&song_lyric=<%=song_lyric%>&song_trace=<%=song_trace%>
				&song_name=<%=song_name%>&song_singer=<%=song_singer%>&song_lyrics_author=<%=song_lyrics_author%>
				&song_creation_time=<%=song_creation_time%>&song_length=<%=song_length%>&song_album=<%=song_album%>
				&song_favorite=<%=song_favorite%>">修改</a></td>
			</tr>


			<% 
				
			}
	rs.close();  
	stmt.close();  
	conn.close();
	%>
		</table>
	</form>
</body>
</html>