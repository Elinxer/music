<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String str ="项目首页";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title><%=str %></title>
	</head>
	<body>
		如果看到:<%=str %>><br>
		表示jsp环境运行成功，可以编写jsp代码！
	</body>
</html>
<%=str %>
