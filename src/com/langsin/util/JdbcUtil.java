package com.langsin.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	
	public static String dataName = "root";	
	public static String dataPassword = "root";
	public static String url="jdbc:mysql://localhost:3306/shop";
	public static String dirver = "com.mysql.jdbc.Driver";
	
	public static Connection getConnection(){
		
		Connection  conn = null;
		
		try {
			Class.forName(dirver);
			conn = DriverManager.getConnection(url,dataName,dataPassword);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void close(Connection conn,Statement st, ResultSet rs ){
		try {
			if(null!=conn){
				conn.close();
			}
			if(null!=st){
				st.close();
			}
			if(null!=rs){
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
