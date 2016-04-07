<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>歌词上传界面</title>
</head>
<body>
	<h2>歌曲上传界面</h2>
<BODY bgColor=#e6e6e6>
	<BR>
	<FORM action="doupload.jsp" encType=multipart/form-data method=post
		name=form>

		<TABLE>
			<TBODY>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲ID:</FONT><INPUT size=20 type=text name="song_id"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲名字:</FONT><INPUT size=20 type=text name="song_name"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							词/曲作者:</FONT><INPUT size=20 type=text name="song_lyrics_author">
					</TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1> 歌手:</FONT><INPUT
						size=20 type=text name="song_singer"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							创作时间:</FONT><INPUT size=20 type=text name="song_creation_time">
					</TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲专辑:</FONT><INPUT size=20 type=text name="song_album"></TD>
				</TR>
				<TR>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							喜欢推荐: </FONT> <INPUT size=20 type=text name="song_favorite"></TD>
					<TD><FONT color=#000000 face=helv,helvetica size=1>
							歌曲时长: </FONT> <INPUT size=20 type=text name="song_length"></TD>
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
					<TD align=right><INPUT type="submit" value="Send" name="send">
					</TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</body>
</html>