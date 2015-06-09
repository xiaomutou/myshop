package com.langsin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.langsin.model.Product;
import com.langsin.model.ShopRegion;
import com.langsin.util.JdbcUtil;

public class RegionDao {

	public List<ShopRegion> getProductById(String fatherid){
		Connection conn = JdbcUtil.getConnection();
		String sql = "select * from shop_region where fatherid = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ShopRegion> list = new ArrayList<ShopRegion>();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, fatherid);
			rs = ps.executeQuery();
			while(rs.next()){
				ShopRegion sr = new ShopRegion();
				sr.setId(rs.getInt(1));
				sr.setRegionid(rs.getInt(2));
				sr.setRegion(rs.getString(3));
				sr.setFatherid(rs.getInt(4));
				sr.setJianpin(rs.getString(5));
				sr.setQuanpin(rs.getString(6));
				list.add(sr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
		return list;
	}
}
