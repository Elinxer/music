<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="net.sf.json.JSONObject"%>
<%@ page import="net.sf.json.JSONArray"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="html5,css3,javascript,音乐,音乐播放器,audio,水墨寒,smohan,成都网站建设,成都网站设计,水墨寒WEB工作室,jquery,css3,html5,前端博客,前端技术,css3学习,前端">
    <meta name="description" content="一款基于HTML5、Css3的列表式音乐播放器，包含列表，音量，进度，时间以及模式等功能，不依赖任何库"><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
	<meta name="version" content="1.0.0">
	<%-- <meta name="author" content="smohan,http://www.smohan.net/"> --%>
    <%-- <link rel="shortcut icon" type="image/ico" href="http://data.smohan.net/static/img/favicon.ico?version=5.0.3"> --%>
    <link rel="stylesheet" href="src/css/demo.css">
    <link rel="stylesheet" href="src/css/smusic.css"/>
    <title>HTML5音乐播放器</title>
</head>
<body>

<div class="grid-demo-info">
    <h1 class="m-demo-title">HTML5音乐播放器</h1>
    <%-- <p class="m-demo-summary">项目地址：<a href="http://www.smohan.net/lab/smusic.html">http://www.smohan.net/lab/smusic.html</a></p> --%>
</div>

<div class="grid-music-container f-usn">
    <div class="m-music-play-wrap">
        <div class="u-cover"></div>
        <div class="m-now-info">
            <h1 class="u-music-title"><strong>标题</strong><small>歌手</small></h1>
            <div class="m-now-controls">
                <div class="u-control u-process">
                    <span class="buffer-process"></span>
                    <span class="current-process"></span>
                </div>
                <div class="u-control u-time">00:00/00:00</div>
                <div class="u-control u-volume">
                    <div class="volume-process" data-volume="0.50">
                        <span class="volume-current"></span>
                        <span class="volume-bar"></span>
                        <span class="volume-event"></span>
                    </div>
                    <a class="volume-control"></a>
                </div>
            </div>
            <div class="m-play-controls">
                <a class="u-play-btn prev" title="上一曲"></a>
                <a class="u-play-btn ctrl-play play" title="暂停"></a>
                <a class="u-play-btn next" title="下一曲"></a>
                <a class="u-play-btn mode mode-list current" title="列表循环"></a>
                <a class="u-play-btn mode mode-random" title="随机播放"></a>
                <a class="u-play-btn mode mode-single" title="单曲循环"></a>
            </div>
        </div>
    </div>
    <div class="f-cb">&nbsp;</div>
    <div class="m-music-list-wrap"></div>
    <div class="m-music-lyric-wrap">
        <div class="inner">
            <ul class="js-music-lyric-content">
                <li class="eof">暂无歌词...</li>
            </ul>
        </div>
    </div>
</div>

<div class="m-demo-copyright">
    <p>Copyright © 2012-2015 Smohan. All Rights Reserved.V.5.0.3.蜀ICP备13000297号-2.</p>
</div>
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
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName+"?useUnicode=true&characterEncoding=utf8",userName,userPasswd);
    //创建Statement（负责执行sql语句）  
    Statement stmt= conn.createStatement();
    String sql="select `song_id`,`song_name`,`song_singer`,`song_lyrics_author`,`song_creation_time`,`song_length`,`song_album`,`song_favorite`,`song_pictures`,`song_avatar`,`song_lyric`,`song_trace` from music_song;";
    ResultSet rs= stmt.executeQuery(sql);
    Map<String, Object> map = new HashMap<String, Object>();
    List<Map> list = new ArrayList<Map>();
    Map user;
    while(rs.next()){
    //依据数据库中的字段名打印数据                                                    
    String song_id=rs.getString("song_id");
    String song_name=rs.getString("song_name");
    String song_singer=rs.getString("song_singer");
    String song_lyrics_author=rs.getString("song_lyrics_author");
    String song_creation_time=rs.getString("song_creation_time");
    String song_length=rs.getString("song_length");
    String song_album=rs.getString("song_album");
    String song_favorite=rs.getString("song_favorite");
    String song_pictures=rs.getString("song_pictures").replace("\\","/");
    String song_avatar=rs.getString("song_avatar");
    String song_trace=rs.getString("song_trace").replace("\\","/");
    String song_lyric=rs.getString("song_lyric").replace("\\","/");


    map.put("title", song_name);
    map.put("singer", song_singer);
    map.put("cover", song_pictures);
    map.put("src", song_trace);
    map.put("lyric", song_lyric);

    JSONObject jsonObject = JSONObject.fromObject(map);
    user = map;
    list.add(jsonObject);
            

            
    }
    JSONArray jsonArray = JSONArray.fromObject(list);
        // out.println(jsonArray);   

 %>  
 
 <script>var musicList=<%=jsonArray%></script>
<!-- <script src="src/js/musicList.js"></script> -->
<script src="src/js/smusic.js"></script>
<script>
    new SMusic({
        musicList : musicList,
        autoPlay  : true,  //是否自动播放
        defaultMode : 2,   //默认播放模式，随机
        callback   : function (obj) {  //返回当前播放歌曲信息
            // console.log(obj);
            /*{title: "赤血长殷", singer: "王凯", cover: "http://data.smohan.net/upload/other/cxcy/cover.jpg", src: "http://data.smohan.net/upload/other/cxcy/music.mp3", index: 4}*/
        }
    });
</script>
<%-- <div style="display: none;"><script src="http://s23.cnzz.com/z_stat.php?id=1000291789&web_id=1000291789" language="JavaScript"></script></div> --%>
</body>
</html>
