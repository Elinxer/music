<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>歌词修改界面</title>
</head>
<body>
	<h2>歌曲修改界面</h2>
<BODY bgColor=#e6e6e6>
	<BR>
	<FORM action="update_song.jsp" encType=multipart/form-data method=post
		name=form>

		<%	request.setCharacterEncoding("utf-8");
	String song_id=request.getParameter("song_id");
	//out.println(song_id);
	String song_name=new String(request.getParameter("song_name").getBytes("ISO-8859-1"),"utf-8");
	out.println(song_name);
	String song_singer=new String(request.getParameter("song_singer").getBytes("ISO-8859-1"),"utf-8");
	String song_lyrics_author=new String(request.getParameter("song_lyrics_author").getBytes("ISO-8859-1"),"utf-8");
	String song_creation_time=new String(request.getParameter("song_creation_time").getBytes("ISO-8859-1"),"utf-8");
	String song_length=new String(request.getParameter("song_length").getBytes("ISO-8859-1"),"utf-8");
	String song_album=new String(request.getParameter("song_album").getBytes("ISO-8859-1"),"utf-8");
	String song_favorite=request.getParameter("song_favorite");
	/*String song_trace=new String(request.getParameter("song_trace").getBytes("ISO-8859-1"),"utf-8");
	String song_avatar=new String(request.getParameter("song_avatar").getBytes("ISO-8859-1"),"utf-8");
	String song_lyric=new String(request.getParameter("song_lyric").getBytes("ISO-8859-1"),"utf-8");
	String song_pictures=new String(request.getParameter("song_pictures").getBytes("ISO-8859-1"),"utf-8");*/
	out.println(song_favorite);
%>
		<TABLE>
			<TBODY>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲ID:</FONT><INPUT size=20 type=text value=<%=song_id %> name="song_id">
					</TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲名字:</FONT><INPUT size=20 type=text value=<%=song_name %>
						name="song_name"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							词/曲作者:</FONT><INPUT size=20 type=text value=<%=song_lyrics_author %>
						name="song_lyrics_author"></TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1> 歌手:</FONT><INPUT
						size=20 type=text value=<%=song_singer %> name="song_singer">
					</TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							创作时间:</FONT><INPUT size=20 type=text value=<%=song_creation_time %>
						name="song_creation_time"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲专辑:</FONT><INPUT size=20 type=text value=<%=song_album %>
						name="song_album"></TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							喜欢推荐: </FONT> <INPUT size=20 type=text value=<%=song_favorite %>
						name="song_favorite"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲时长: </FONT> <INPUT size=20 type=text value=<%=song_length %>
						name="song_length"></TD>
				</TR>
				<TR>

					<TD><FONT color=#000000 face=helv,helvetica size=1>
							上传歌曲: </FONT><INPUT size=60 type=file name="song_file"></TD>
				</TR>

				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							上传歌词: </FONT> <INPUT size=60 type=file name="song_lyric"></TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							上传头像: </FONT> <INPUT size=60 type=file name="song_avatar"></TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							上传图册: </FONT> <INPUT size=60 type=file name="song_pictures"></TD>

				</TR>
				<TR>
					<TD align=right><INPUT type="submit" value="更改" name="send">
					</TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</body>
</html>