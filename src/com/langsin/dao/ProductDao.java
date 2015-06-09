package com.langsin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.langsin.model.Product;
import com.langsin.util.JdbcUtil;
import com.langsin.util.Page;

public class ProductDao {

	public void addProduct(Product product){
		Connection conn = JdbcUtil.getConnection();
		String sql = "insert into shop_product(product_name,price,product_date,product_image,product_content) value(?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, product.getPname());
			ps.setDouble(2, product.getPrice());
			ps.setTimestamp(3, new Timestamp(product.getPdate().getTime()));
			ps.setString(4, product.getImage());
			ps.setString(5, product.getContent());
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, null);
		}
	}
	
	public List<Product> getAllProduct(){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_product";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				Product product = new Product();
				product.setId(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPdate(new Date(rs.getTimestamp(4).getTime()));
				product.setImage(rs.getString(5));
				product.setContent(rs.getString(6));
				list.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, null);
		}
		return list;
	}
	public List<Product> getProductByPage(Page page){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_product limit ? , ? ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, page.getBegin());
			ps.setInt(2, page.getPerpagecount());
			rs = ps.executeQuery();
			while(rs.next()){
				Product product = new Product();
				product.setId(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPdate(new Date(rs.getTimestamp(4).getTime()));
				product.setImage(rs.getString(5));
				product.setContent(rs.getString(6));
				list.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, null);
		}
		return list;
	}
	
	public Product getProductById(int id){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_product where id = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while(rs.next()){
				product = new Product();
				product.setId(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPdate(new Date(rs.getTimestamp(4).getTime()));
				product.setImage(rs.getString(5));
				product.setContent(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return product;
	}
	
	public List<Product> getProductByPname(String pname){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_product where product_name like '%"+pname+"%' ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				Product product = new Product();
				product = new Product();
				product.setId(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPdate(new Date(rs.getTimestamp(4).getTime()));
				product.setImage(rs.getString(5));
				product.setContent(rs.getString(6));
				list.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return list;
	}
	
	public int getTotalCount(){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select count(*) from shop_product";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = null;
		int total = 0;;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				total = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return total;
	}
	
}
