package com.database;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataBase {
	
	//此进行连接数据库
	private String url="jdbc:mysql://127.0.0.1:3306/music"; //test为数据库名称
	private String dbuser="root"; //数据库账户
	private String dbpwd = "root"; //数据库密码
	private Connection conn;
	
	public DataBase() throws SQLException {
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); //加载驱动 JspStudy
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		//取得数据库连接conn JspStudy
		conn = DriverManager.getConnection(url, dbuser, dbpwd);
	}
	
	public Connection getConn() {
		return conn;
	}

}
