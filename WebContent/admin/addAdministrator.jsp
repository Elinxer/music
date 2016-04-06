<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />

	<title>Xenon - Blank Page</title>

	<link rel="stylesheet" href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">
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

	<div class="settings-pane">

		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>

		<div class="settings-pane-inner">

			<div class="row">

				<div class="col-md-4">

					<div class="user-info">

						<div class="user-image">
							<a href="extra-profile.html">
								<img src="assets/images/user-2.png" class="img-responsive img-circle" />
							</a>
						</div>

						<div class="user-details">

							<h3>
								<a href="extra-profile.html">John Smith</a>

								<!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
								<span class="user-status is-online"></span>
							</h3>

							<p class="user-title">Web Developer</p>

							<div class="user-links">
								<a href="extra-profile.html" class="btn btn-primary">Edit Profile</a>
								<a href="extra-profile.html" class="btn btn-success">Upgrade</a>
							</div>

						</div>

					</div>

				</div>

				<div class="col-md-8 link-blocks-env">

					<div class="links-block left-sep">
						<h4>
							<span>Notifications</span>
						</h4>

						<ul class="list-unstyled">
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk1" />
								<label for="sp-chk1">Messages</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk2" />
								<label for="sp-chk2">Events</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk3" />
								<label for="sp-chk3">Updates</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk4" />
								<label for="sp-chk4">Server Uptime</label>
							</li>
						</ul>
					</div>

					<div class="links-block left-sep">
						<h4>
							<a href="#">
								<span>Help Desk</span>
							</a>
						</h4>

						<ul class="list-unstyled">
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Support Center
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Submit a Ticket
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Domains Protocol
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Terms of Service
								</a>
							</li>
						</ul>
					</div>

				</div>

			</div>

		</div>

	</div>

	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed">

			<div class="sidebar-menu-inner">

				<header class="logo-env">

					<!-- logo -->
					<div class="logo">
						<a href="dashboard-1.html" class="logo-expanded">
							<img src="assets/images/logo@2x.png" width="80" alt="" />
						</a>

						<a href="dashboard-1.html" class="logo-collapsed">
							<img src="assets/images/logo-collapsed@2x.png" width="40" alt="" />
						</a>
					</div>
					<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
					<div class="mobile-menu-toggle visible-xs">
						<a href="#" data-toggle="user-info-menu">
							<i class="fa-bell-o"></i>
							<span class="badge badge-success">7</span>
						</a>

						<a href="#" data-toggle="mobile-menu">
							<i class="fa-bars"></i>
						</a>
					</div>
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
					<div class="settings-icon">
						<a href="#" data-toggle="settings-pane" data-animate="true">
							<i class="linecons-cog"></i>
						</a>
					</div>
				</header>
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<li class="active opened active">
						<a href="">
							<i class="linecons-cog"></i>
							<span class="title">控制面板</span>
						</a>
					</li>
					<li>
						<a href="layout-variants.html">
							<i class="linecons-desktop"></i>
							<span class="title">用户管理</span>
						</a>
						<ul>
							<li>
								<a href="add_administrator.jsp">
									<span class="title">添加用户</span>
								</a>
							</li>
							<li>
								<a href="layout-variants.html">
									<span class="title">用户列表</span>
								</a>
							</li>
							<li>
								<a href="layout-static-sidebar.html">
									<span class="title">系统权限</span>
								</a>
							</li>
							<li>
								<a href="layout-static-sidebar.html">
									<span class="title">管理群组</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="ui-widgets.html">
							<i class="linecons-star"></i>
							<span class="title">喜欢歌曲</span>
						</a>
					</li>

					<li>
						<a href="tables-basic.html">
							<i class="linecons-database"></i>
							<span class="title">歌曲管理</span>
						</a>
						<ul>
							<li>
								<a href="tables-basic.html">
									<span class="title">添加歌曲</span>
								</a>
							</li>
							<li>
								<a href="tables-responsive.html">
									<span class="title">歌曲列表</span>
								</a>
							</li>
							<li>
								<a href="tables-datatables.html">
									<span class="title">歌曲统计</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="extra-gallery.html">
							<i class="linecons-cog"></i>
							<span class="title">系统配置</span>
						</a>
						<ul>
							<li>
								<a href="extra-gallery.html">
									<span class="title">基础配置</span>
								</a>
							</li>
							<li>
								<a href="extra-calendar.html">
									<span class="title">音乐配置</span>
								</a>
							</li>
							<li>
								<a href="extra-profile.html">
									<span class="title">其他配置</span>
								</a>
							</li>
						</ul>

					</li>
				</ul>
				<!-- /end -->
			</div>

		</div>

		<div class="main-content">

			<!-- User Info, Notifications and Menu Bar -->
			<nav class="navbar user-info-navbar" role="navigation">

				<!-- Left links for user info navbar -->
				<ul class="user-info-menu left-links list-inline list-unstyled">

					<li class="hidden-sm hidden-xs">
						<a href="#" data-toggle="sidebar">
							<i class="fa-bars"></i>
						</a>
					</li>

					<li class="dropdown hover-line">
						<a href="#" data-toggle="dropdown">
							<i class="fa-envelope-o"></i>
							<span class="badge badge-green">15</span>
						</a>

						<ul class="dropdown-menu messages">
							<li>

								<ul class="dropdown-menu-list list-unstyled ps-scrollbar">

									<li class="active"><!-- "active" class means message is unread -->
										<a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>

											<span class="line desc small">
												This ainât our first item, it is the best of the rest.
											</span>
										</a>
									</li>

									<li class="active">
										<a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>

											<span class="line desc small">
												Oh he decisively impression attachment friendship so if everything.
											</span>
										</a>
									</li>

									<li>
										<a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>

											<span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
										</a>
									</li>

									<li>
										<a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>

											<span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
										</a>
									</li>

									<!-- Repeated -->

									<li class="active"><!-- "active" class means message is unread -->
										<a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>

											<span class="line desc small">
												This ainât our first item, it is the best of the rest.
											</span>
										</a>
									</li>

									<li class="active">
										<a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>

											<span class="line desc small">
												Oh he decisively impression attachment friendship so if everything.
											</span>
										</a>
									</li>

									<li>
										<a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>

											<span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
										</a>
									</li>

									<li>
										<a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>

											<span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
										</a>
									</li>

								</ul>

							</li>

							<li class="external">
								<a href="blank-sidebar.html">
									<span>All Messages</span>
									<i class="fa-link-ext"></i>
								</a>
							</li>
						</ul>
					</li>

					<li class="dropdown hover-line">
						<a href="#" data-toggle="dropdown">
							<i class="fa-bell-o"></i>
							<span class="badge badge-purple">7</span>
						</a>

						<ul class="dropdown-menu notifications">
							<li class="top">
								<p class="small">
									<a href="#" class="pull-right">Mark all Read</a>
									You have <strong>3</strong> new notifications.
								</p>
							</li>

							<li>
								<ul class="dropdown-menu-list list-unstyled ps-scrollbar">
									<li class="active notification-success">
										<a href="#">
											<i class="fa-user"></i>

											<span class="line">
												<strong>New user registered</strong>
											</span>

											<span class="line small time">
												30 seconds ago
											</span>
										</a>
									</li>

									<li class="active notification-secondary">
										<a href="#">
											<i class="fa-lock"></i>

											<span class="line">
												<strong>Privacy settings have been changed</strong>
											</span>

											<span class="line small time">
												3 hours ago
											</span>
										</a>
									</li>

									<li class="notification-primary">
										<a href="#">
											<i class="fa-thumbs-up"></i>

											<span class="line">
												<strong>Someone special liked this</strong>
											</span>

											<span class="line small time">
												2 minutes ago
											</span>
										</a>
									</li>

									<li class="notification-danger">
										<a href="#">
											<i class="fa-calendar"></i>

											<span class="line">
												John cancelled the event
											</span>

											<span class="line small time">
												9 hours ago
											</span>
										</a>
									</li>

									<li class="notification-info">
										<a href="#">
											<i class="fa-database"></i>

											<span class="line">
												The server is status is stable
											</span>

											<span class="line small time">
												yesterday at 10:30am
											</span>
										</a>
									</li>

									<li class="notification-warning">
										<a href="#">
											<i class="fa-envelope-o"></i>

											<span class="line">
												New comments waiting approval
											</span>

											<span class="line small time">
												last week
											</span>
										</a>
									</li>
								</ul>
							</li>

							<li class="external">
								<a href="#">
									<span>View all notifications</span>
									<i class="fa-link-ext"></i>
								</a>
							</li>
						</ul>
					</li>

				</ul>


				<!-- Right links for user info navbar -->
				<ul class="user-info-menu right-links list-inline list-unstyled">

					<li class="search-form"><!-- You can add "always-visible" to show make the search input visible -->

						<form method="get" action="extra-search.html">
							<input type="text" name="s" class="form-control search-field" placeholder="Type to search..." />

							<button type="submit" class="btn btn-link">
								<i class="linecons-search"></i>
							</button>
						</form>

					</li>

					<li class="dropdown user-profile">
						<a href="#" data-toggle="dropdown">
							<img src="assets/images/user-4.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
							<span>
								Arlind Nushi
								<i class="fa-angle-down"></i>
							</span>
						</a>

						<ul class="dropdown-menu user-profile-menu list-unstyled">
							<li>
								<a href="#edit-profile">
									<i class="fa-edit"></i>
									New Post
								</a>
							</li>
							<li>
								<a href="#settings">
									<i class="fa-wrench"></i>
									Settings
								</a>
							</li>
							<li>
								<a href="#profile">
									<i class="fa-user"></i>
									Profile
								</a>
							</li>
							<li>
								<a href="#help">
									<i class="fa-info"></i>
									Help
								</a>
							</li>
							<li class="last">
								<a href="extra-lockscreen.html">
									<i class="fa-lock"></i>
									Logout
								</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="#" data-toggle="chat">
							<i class="fa-comments-o"></i>
						</a>
					</li>

				</ul>

			</nav>


			<%-- <h3>Here starts everything&hellip;</h3> --%>
			<div class="row">
				<div class="col-sm-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">添加管理员</h3>
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

							<form role="form" class="form-horizontal" action="Controller/AdministratorPost.jsp?action=AddAdministrator" method="post">
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-1">管理员名称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="field-1" name="username">
									</div>
								</div>
								<div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-2">管理员密码</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="field-2" name="password">
									</div>
								</div>
								<div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-3">邮箱地址</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" id="field-3" name="email">
									</div>
								</div>
								<div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="field-5">简介</label>
									<div class="col-sm-10">
										<textarea class="form-control autogrow" cols="5" id="field-5" name="description"
											 style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 70px;"></textarea>
									</div>
								</div>
								<%-- <div class="form-group-separator"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">是否启用</label>
									<div class="col-sm-10">
										<select class="form-control" name="statsu">
											<option value="1">开启</option>
											<option value="0">禁用</option>
										</select>
									</div>
								</div> --%>
								<div class="form-group">
									<label class="col-sm-2 control-label">&nbsp;</label>
									<div class="col-sm-10">
										<button type="submit" class="btn btn-success">提交</button>
										<button type="reset" class="btn btn-white">重置</button>
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