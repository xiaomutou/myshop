package com.langsin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.langsin.model.User;
import com.langsin.util.JdbcUtil;

public class UserDao {

	public User getUser(String username ,String password){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_user where username = ? and password = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setActivated(rs.getInt(5));
				user.setLocked(rs.getInt(6));
				user.setLevel(rs.getInt(7));
				user.setCreated(new Date(rs.getTimestamp(8).getTime()));
				user.setUpdated(new Date(rs.getTimestamp(9).getTime()));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return user;
	}
	
	public int saveUser(User user){
		Connection conn = JdbcUtil.getConnection();
		String sql = "insert into shop_user(username,password,email,activated,locked,level,created,updated) value(?,?,?,?,?,?,now(),now())";
		PreparedStatement ps = null;
		ResultSet rs = null;
		int key = 0;
		try {
			ps = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setInt(4, user.getActivated());
			ps.setInt(5, user.getLocked());
			ps.setInt(6, user.getLevel());
			ps.executeUpdate();
			rs = ps.getGeneratedKeys();
			while(rs.next()){
				key = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return key;
	}
	
	public static void main(String[] args) {
//		User user = new User();
//		user.setUsername("admin");
//		user.setPassword("123");
//		user.setEmail("admin@123.com");
//		user.setActivated(0);
//		user.setLocked(0);
//		user.setLevel(2);
//		
//		UserDao ud = new UserDao();
//		ud.saveUser(user);
		
		UserDao ud = new UserDao();
		ud.getUser("admin", "123");
	}
	
	
	
	
	
	
	
}
