<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.File"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>歌曲删除中</title>
</head>
<body>
	<%!
    /**
     * 删除单个文件
     * @param   sPath    被删除文件的文件名
     * @return 单个文件删除成功返回true，否则返回false
     */
    public boolean deleteFile(String sPath) {
		boolean flag = false;
		
       File file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {
            file.delete();
            flag = true;
        }
        return flag;
    }
	%>


	<% 
	//删除歌曲相关文件
	
		String song_id=request.getParameter("song_id");
		String song_pictures=request.getParameter("song_pictures");
		String song_avatar=request.getParameter("song_avatar");
		String song_lyric=request.getParameter("song_lyric");
		String song_trace=request.getParameter("song_trace");

		String path=request.getSession().getServletContext().getRealPath("/");
		//out.println(path+"<br>");
		String temp_path="\\music\\";
		//out.println(temp_path+"<br>");
		//webapps的绝对路径
		String w_path=path.replace(temp_path,"");
		out.println(w_path+"<br>");



		/*//这里修改只是为了防止路径中有中文存在
	String song_pictures=new String(request.getParameter("song_pictures").getBytes("ISO-8859-1"),"utf-8");
		
		String song_avatar=new String(request.getParameter("song_avatar").getBytes("ISO-8859-1"),"utf-8");
		String song_lyric=new String(request.getParameter("song_lyric").getBytes("ISO-8859-1"),"utf-8");
		String song_trace=new String(request.getParameter("song_trace").getBytes("ISO-8859-1"),"utf-8");*/
		out.println(song_id+"<br>");
		out.println(song_pictures+"<br>");
		out.println(song_avatar+"<br>");
		out.println(song_lyric+"<br>");
		out.println(song_trace+"<br>");
		out.println("删除歌曲"+deleteFile(w_path+song_trace));
		out.println("删除图册"+deleteFile(w_path+song_pictures));
		out.println("删除头像"+deleteFile(w_path+song_avatar));
		out.println("删除歌词"+deleteFile(w_path+song_lyric));
		
	%>
	<%/*
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
	//删除表中的记录
	String sql="delete from "+tableName+" where (song_id="+song_id+")";
	stmt.executeUpdate(sql);
*/
	%>
</body>
</html>