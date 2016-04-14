<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%!
/*
	秒数转为时间格式为yyyy-MM-dd hh:mm:ss
	导入包为
	import="java.text.*;
	import=java.util.Calendar;
	str 为秒数
	format为要转化的时间格式
*/
String timechange(String str, String format){// format的格式  yyyy-MM-dd hh:mm:ss
	str = str+"000";//转化为毫秒
	DateFormat formatter = new SimpleDateFormat(format);
	long milliSeconds= Long.parseLong(str);
	System.out.println(milliSeconds);
	Calendar calendar = Calendar.getInstance();
	calendar.setTimeInMillis(milliSeconds);
	//格式化返回日期
	return formatter.format(calendar.getTime());
}

%>
<%
	//此进行连接数据库
	String url="jdbc:mysql://127.0.0.1:3306/music"; //test为数据库名称
	String dbuser="root"; //数据库账户
	String dbpwd="root"; //数据库密码
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


%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />

	<title>Xenon - Blank Page</title>
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
							<h3 class="panel-title">管理员列表&nbsp;&nbsp;|&nbsp;&nbsp;<a href="./administratorAdd.jsp">添加管理员</a></h3>
							<div class="panel-options">
								<a href="#" data-toggle="panel">
									<span class="collapse-icon">–</span>
									<span class="expand-icon">+</span>
								</a>
								<a href="#" data-toggle="remove"> × </a>
							</div>
						</div>
						<div class="panel-body">

							<div class="col-sm-12">

								<!-- Basic Table -->

								<table class="table responsive">
									<thead>
										<tr>
											<th>#ID</th>
											<th>管理员名称</th>
											<th>邮箱地址</th>
											<th>最后登录IP</th>
											<th>上一次登陆时间</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<%
											PreparedStatement ps=null;
											ResultSet rs=null;

											try
											{
												String sql="select * from music_user";
												ps = conn.prepareStatement(sql);
												rs = ps.executeQuery();
												while(rs.next())
												{
											%>
												<tr>
													<td><%=rs.getString(1)%></td>
													<td><%=rs.getString(2)%></td>
													<td><%=rs.getString(4)%></td>
													<td><%=rs.getString(6)%></td>
													<td><%=timechange(rs.getString(7),"yyyy-MM-dd hh:mm:ss")%></td>
													<td>
														<a href="./administratorEdit.jsp?administratorId=<%=rs.getString(1)%>" class="btn btn-info">编辑</a>
														<a href="./Controller/AdministratorPost.jsp?action=administratorDelete&administratorId=<%=rs.getString(1)%>" class="btn btn-white" onclick="return confirm('确认删除吗？');">删除</a>
													</td>
												</tr>
											<%
												}
											}
											catch (SQLException e)
											{
												e.printStackTrace();
											}
											finally
											{
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
									</tbody>
								</table>

							</div>
							<%-- /end --%>
						</div>
					</div>

				</div>
			</div>

			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<%@ include file="Public/main-footer.jsp"%>
		</div>

		<!-- start: Chat Section -->
		<%@ include file="Public/chat.jsp"%>
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
