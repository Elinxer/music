<%@ page contentType="text/html;charset=utf-8" %>
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
				<a href="./index.jsp">
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
						<a href="administratorAdd.jsp">
							<span class="title">添加用户</span>
						</a>
					</li>
					<li>
						<a href="administratorList.jsp">
							<span class="title">用户列表</span>
						</a>
					</li>
					<li>
						<a href="">
							<span class="title">系统权限</span>
						</a>
					</li>
					<li>
						<a href="">
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
						<a href="upload_song.jsp">
							<span class="title">添加歌曲</span>
						</a>
					</li>
					<li>
						<a href="check_song.jsp">
							<span class="title">查看歌曲</span>
						</a>
					</li>
					<li>
						<a href="update_ui.jsp">
							<span class="title">修改歌曲</span>
						</a>
					</li>
					<li>
						<a href="delete_song.jsp">
							<span class="title">删除歌曲</span>
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
