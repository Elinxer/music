<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
	//此进行连接数据库
	String url="jdbc:mysql://127.0.0.1:3306/music"; //test为数据库名称
	String dbuser="root"; //数据库账户
	String dbpwd="root"; //数据库密码

	String userID 	 = null;
	String userName  = null;
	String userEmail = null;
	String userPassword  = null;

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

	PreparedStatement ps=null;
	ResultSet rs=null;

	try
	{
		String administratorId = request.getParameter("administratorId");
		String sql="select * from music_user where user_id="+administratorId+";";


		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();

		if(!rs.next()) { /* 账号错误提示 */
			out.println("信息错误！");
		} else {
			userID 	  = new String(rs.getString("user_id"));
			userName  = new String(rs.getString("user_name"));
			userEmail = new String(rs.getString("user_email"));
			userPassword = new String(rs.getString("user_password"));

		}

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		try
		{
			if(rs!=null)
				rs.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(ps!=null)
					ps.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				try
				{
					if(conn!=null)
						conn.close();
				}
				catch (SQLException e)
				{
						e.printStackTrace();
				}
			}
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />

	<title>TEA - 管理员编辑</title>

	<link rel="stylesheet" href="assets/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="assets/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/xenon-core.css">
	<link rel="stylesheet" href="assets/css/xenon-forms.css">
	<link rel="stylesheet" href="assets/css/xenon-components.css">
	<link rel="stylesheet" href="assets/css/xenon-skins.css">
	<link rel="stylesheet" href="assets/css/custom.css">

	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body">

	<%@ include file="Public/settings-pane.jsp"%>

	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<%@ include file="Public/sidebar-menu.jsp"%>

		<div class="main-content">

			<!-- User Info, Notifications and Menu Bar -->
			<%@ include file="Public/navbar.jsp"%>


			<%-- <h3>Here starts everything&hellip;</h3> --%>
			<div class="row">
				<div class="col-sm-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">管理员编辑</h3>
							<div class="panel-options">
								<a href="#" data-toggle="panel">
									<span class="collapse-icon">–</span>
									<span class="expand-icon">+</span>
								</a>
								<a href="#" data-toggle="remove">
									×
								</a>
							</div>
						</div>
						<div class="panel-body">

							<form role="form" class="form-horizontal" action="Controller/AdministratorPost.jsp?action=administratorEdit" method="post">
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-1">管理员名称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="field-1" disabled value="<%=userName%>">
									</div>
								</div>
								<div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-2">管理员密码</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="field-2" name="user_password" value="<%=userPassword%>">
									</div>
								</div>
								<div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-3">邮箱地址</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" id="field-3" name="user_email" value="<%=userEmail%>">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 control-label">&nbsp;</label>
									<div class="col-sm-10">
										<input type="hidden" name="user_id" value="<%=userID%>">
										<button type="submit" class="btn btn-success">提交</button>
										<a href="./administratorList.jsp" class="btn btn-white">返回列表</a>
									</div>
								</div>
							</form>
							<%-- /end --%>
						</div>
					</div>

				</div>
			</div>

			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<footer class="main-footer sticky footer-type-1">

				<div class="footer-inner">

					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; 2014
						<strong>Xenon</strong>
						More Templates <a href="http://www.cssmoban.com/" target="_blank" title="音乐网站">音乐网站</a> -Copyright by <a href="http://www.cssmoban.com/" title="谢谢" target="_blank">计算机2班</a>
					</div>


					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">

						<a href="#" rel="go-top">
							<i class="fa-angle-up"></i>
						</a>

					</div>

				</div>

			</footer>
		</div>

		<!-- start: Chat Section -->
		<div id="chat" class="fixed">

			<div class="chat-inner">


				<h2 class="chat-header">
					<a href="#" class="chat-close" data-toggle="chat">
						<i class="fa-plus-circle rotate-45deg"></i>
					</a>

					Chat
					<span class="badge badge-success is-hidden">0</span>
				</h2>

				<script type="text/javascript">
				// Here is just a sample how to open chat conversation box
				jQuery(document).ready(function($)
				{
					var $chat_conversation = $(".chat-conversation");

					$(".chat-group a").on('click', function(ev)
					{
						ev.preventDefault();

						$chat_conversation.toggleClass('is-open');

						$(".chat-conversation textarea").trigger('autosize.resize').focus();
					});

					$(".conversation-close").on('click', function(ev)
					{
						ev.preventDefault();
						$chat_conversation.removeClass('is-open');
					});
				});
				</script>


				<div class="chat-group">
					<strong>Favorites</strong>

					<a href="#"><span class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
				</div>


				<div class="chat-group">
					<strong>Work</strong>

					<a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Daniel A. Pena</em></a>
				</div>


				<div class="chat-group">
					<strong>Other</strong>

					<a href="#"><span class="user-status is-online"></span> <em>Dennis E. Johnson</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Stuart A. Shire</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Janet I. Matas</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Mindy A. Smith</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Herman S. Foltz</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Gregory E. Robie</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Nellie T. Foreman</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>William R. Miller</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Vivian J. Hall</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Melinda A. Anderson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Gary M. Mooneyham</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert C. Medina</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Dylan C. Bernal</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Marc P. Sanborn</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Kenneth M. Rochester</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Rachael D. Carpenter</em></a>
				</div>

			</div>

			<!-- conversation template -->
			<div class="chat-conversation">

				<div class="conversation-header">
					<a href="#" class="conversation-close">
						&times;
					</a>

					<span class="user-status is-online"></span>
					<span class="display-name">Arlind Nushi</span>
					<small>Online</small>
				</div>

				<ul class="conversation-body">
					<li>
						<span class="user">Arlind Nushi</span>
						<span class="time">09:00</span>
						<p>Are you here?</p>
					</li>
					<li class="odd">
						<span class="user">Brandon S. Young</span>
						<span class="time">09:25</span>
						<p>This message is pre-queued.</p>
					</li>
					<li>
						<span class="user">Brandon S. Young</span>
						<span class="time">09:26</span>
						<p>Whohoo!</p>
					</li>
					<li class="odd">
						<span class="user">Arlind Nushi</span>
						<span class="time">09:27</span>
						<p>Do you like it?</p>
					</li>
				</ul>

				<div class="chat-textarea">
					<textarea class="form-control autogrow" placeholder="Type your message"></textarea>
				</div>

			</div>

		</div>
		<!-- end: Chat Section -->

	</div>

	<!-- Bottom Scripts -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>

	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>

</body>
</html>
