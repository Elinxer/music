<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.io.File"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>正在上传中</title>
</head>
<body>
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
		%>
		<%	

			String path=request.getSession().getServletContext().getRealPath("/")+"music\\";
			//String path="D:\\JspStudy\\WWW\\music\\";
			//String trace=path+"WebContent\\musics\\music_file\\";
			out.println(path+"<br>");
			//参数初始化
			String trace_song=null,trace_lyric=null,trace_avatar=null,trace_pictures=null;
			String song_format=null;
			int song_size=0;
			//实例化上载beanz
			SmartUpload mySmartUpload=new SmartUpload();
			//初始化
			mySmartUpload.initialize(pageContext);
			//设置上载的最大值50MB
			mySmartUpload.setMaxFileSize(50*1024*1024);
			//上载文件的类型
			//mySmartUpload.setAllowedFilesList(fileType);
			//允许上传文件类型 
			//String fileType = "mp3,ape,JPG";
			//这里是没有错的
			mySmartUpload.upload();
			//获取歌曲id
			//String song_id=mySmartUpload.getRequest().getParameter("song_id");
			//out.println("song_id:"+song_id+"<br>");
			//获取歌曲名字
			String song_name=mySmartUpload.getRequest().getParameter("song_name");
			out.println("song_name:"+song_name+"<br>");
			//获取词曲作者 
			String song_lyrics_author=mySmartUpload.getRequest().getParameter("song_lyrics_author");
			out.println("song_lyrics_author:"+song_lyrics_author+"<br>");
			//获取歌曲歌手
			String song_singer=mySmartUpload.getRequest().getParameter("song_singer");
			out.println("song_singer:"+song_singer+"<br>");
			//获取歌曲创作时间  
			String song_creation_time=mySmartUpload.getRequest().getParameter("song_creation_time");
			out.println("song_creation_time:"+song_creation_time+"<br>");
			//获取歌曲专辑 
			String song_album=mySmartUpload.getRequest().getParameter("song_album");
			out.println("song_album:"+song_album+"<br>");
			//歌曲喜欢推荐
			String song_favorite =mySmartUpload.getRequest().getParameter("song_favorite");
			out.println("歌曲喜欢推荐"+song_favorite+"<br>");
			//获取歌曲时长
			String song_length =mySmartUpload.getRequest().getParameter("song_length");
			out.println("歌曲时长"+song_length+"<br>");
			//获取上传文歌曲的名字
			String song_file=request.getParameter("song_file");
			//获取上传歌词的名字
			String song_lyric=request.getParameter("song_lyric");
			//获取上传头像的名字
			String song_avatar=request.getParameter("song_avatar");
			//获取上传图像的名字
			String song_pictures=request.getParameter("song_pictures");
			
			//循环取得所有上载的文件
			for (int i=0;i<mySmartUpload.getFiles().getCount();i++){
				//取得上载的文件
				com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);
				if (!myFile.isMissing())
					{
						//取得上载的文件的文件名
						String myFileName=myFile.getFileName();
						out.println("文件的文件名:"+myFileName+"<br>");
						//第一个上传框，即上传歌曲文件的信息
						if(i==0){
							//取得后缀名
							String ext= mySmartUpload.getFiles().getFile(i).getFileExt();
							out.println("后缀名："+ext+"<br>");
							song_format=ext;
							//取得文件的大小
							int fileSize=myFile.getSize();
							out.println("文件的大小"+fileSize+"<br>");
							song_size=fileSize;
							//没改名字前的路径
							String trace=path+"WebContent\\musics\\music_file\\"+myFile.getFileName();
							out.println(trace);
							//将文件保存在服务器端
							myFile.saveAs(trace);
							//当前的时间
							out.println("当前时间是"+getNowTime());
							//更改文件的名字，以10个单位的数字表示
							File file = new File(trace);
							File newfile=new File(path+"WebContent\\musics\\music_file\\"+getNowTime()+"."+ext);
							file.renameTo(newfile);
							trace=newfile.getPath();
							//输出文件的恶路径
							out.println("文件物理的路径"+trace+"<br>");
							//String r_path="\\music\\WebContent\\musics\\music_file\\"+newfile.getName();
							String r_path="musics\\music_file\\"+newfile.getName();
							out.println("文件绝对的路径"+r_path+"<br>");
							trace_song=r_path.replaceAll("\\\\", "\\\\\\\\");

							out.println("<br><br><br>");
						}
						else if(i==1){
							//取得后缀名
							String ext= mySmartUpload.getFiles().getFile(i).getFileExt();
							out.println("后缀名："+ext+"<br>");
							song_format=ext;
							//没改名字前的路径
							String trace=path+"WebContent\\musics\\music_lyric\\"+myFile.getFileName();
							out.println(trace);
							//将文件保存在服务器端
							myFile.saveAs(trace);
							//当前的时间
							out.println("当前时间是"+getNowTime());
							//更改文件的名字，以10个单位的数字表示
							File file = new File(trace);
							File newfile=new File(path+"WebContent\\musics\\music_lyric\\"+getNowTime()+"."+ext);
							file.renameTo(newfile);
							trace=newfile.getPath();
							//输出文件的恶路径
							out.println("文件物理的路径"+trace+"<br>");
						//String r_path="\\music\\WebContent\\musics\\music_lyric\\"+newfile.getName();
							String r_path="musics\\music_lyric\\"+newfile.getName();
							out.println("文件的路径"+r_path+"<br>");
							trace_lyric=r_path.replaceAll("\\\\", "\\\\\\\\");
							out.println("<br><br><br>");
							}
							else if(i==2){
								//取得后缀名
								String ext= mySmartUpload.getFiles().getFile(i).getFileExt();
								out.println("后缀名："+ext+"<br>");
								song_format=ext;
								//没改名字前的路径
								String trace=path+"WebContent\\musics\\music_avatar\\"+myFile.getFileName();
								out.println(trace);
								//将文件保存在服务器端
								myFile.saveAs(trace);
								//当前的时间
								out.println("当前时间是"+getNowTime());
								//更改文件的名字，以10个单位的数字表示
								File file = new File(trace);
								File newfile=new File(path+"WebContent\\musics\\music_avatar\\"+getNowTime()+"."+ext);
								file.renameTo(newfile);
								trace=newfile.getPath();
								//输出文件的恶路径
								out.println("文件的路径"+trace+"<br>");
								String r_path="musics\\music_avatar\\"+newfile.getName();
								out.println("文件的路径"+r_path+"<br>");
								trace_avatar=r_path.replaceAll("\\\\", "\\\\\\\\");
								out.println("<br><br><br>");
							}
							else if(i==3){
								//取得后缀名
								String ext= mySmartUpload.getFiles().getFile(i).getFileExt();
								out.println("后缀名："+ext+"<br>");
								song_format=ext;
								//没改名字前的路径
								String trace=path+"WebContent\\musics\\music_pictures\\"+myFile.getFileName();
								out.println(trace);
								//将文件保存在服务器端
								myFile.saveAs(trace);
								//当前的时间
								out.println("当前时间是"+getNowTime());
								//更改文件的名字，以10个单位的数字表示
								File file = new File(trace);
								File newfile=new File(path+"WebContent\\musics\\music_pictures\\"+getNowTime()+"."+ext);
								file.renameTo(newfile);
								trace=newfile.getPath();
								//输出文件的恶路径
								out.println("文件的路径"+trace+"<br>");
								String r_path="musics\\music_pictures\\"+newfile.getName();
								out.println("文件的路径"+r_path+"<br>");
								trace_pictures=r_path.replaceAll("\\\\", "\\\\\\\\");
								out.println("<br><br><br>");
							}

					else
					{	
						
						out.println(("第"+i+"存在有上传框没有路径").toString()); 
						
						
					}
					}
					//与前面的if对应
					}
					//歌曲文件路径
					out.println(trace_song);
					//歌词文件路径
					out.println(trace_lyric);
					//歌曲头像路径
					out.println(trace_avatar);
					//歌曲图册路径
					out.println(trace_pictures);

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
					String sql="insert into "+tableName+" (`song_id`,`song_name`,`song_singer`,`song_lyrics_author`,`song_creation_time`,`song_album`,`song_length`,`song_format`,`song_play_times`,`song_pictures`,`song_avatar`,`song_lyric`,`song_size`,`song_favorite`,`song_trace`) values(null,'"+song_name+"','"+song_singer+"','"+song_lyrics_author+"','"+song_creation_time+"','"+song_album+"','"+song_length+"','"+song_format+"','0','"+trace_pictures+"','"+trace_avatar+"','"+trace_lyric+"','"+song_size+"',"+song_favorite+",'"+trace_song+"');";
					stmt.executeUpdate(sql);

%>


</body>
</html>