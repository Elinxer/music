<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>在线音乐</title>
</head>
<body>
	<audio id="media" src="" autoplay="autoplay" onended="playMusic(1,0)"
		ontimeupdate="timeupdate()"></audio>

	<div
		style="float: left; margin-left: 50px; width: 450px; height: 200px;">
		<p id="musicTitle"></p>
		<p id="currTime">当前：00:00:00</p>
		<p id="totalTime">时长：00:00:00</p>

		<input id="lastMusic" type="button" value="上一首" /> <input id="rewind"
			type="button" value="<-" /> <input id="playMusic" type="button"
			value="暂停" /> <input id="fast" type="button" value="->" /> <input
			id="nextMusic" type="button" value="下一首" /> <select id="playState">
			<option value="0">单曲循环</option>
			<option value="1" selected>列表循环</option>
			<option value="2">随机播放</option>
		</select>
		<ul id="box"
			style="border: 1px solid black; padding: 0px; height: 300px; width: 300px; overflow-y: auto;"></ul>
	</div>
</body>
</html>