package com.langsin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.langsin.model.Order;
import com.langsin.model.OrderDetail;
import com.langsin.model.User;
import com.langsin.util.JdbcUtil;

public class OrderDao {

	public void buildOrder(Order order){
		Connection conn = JdbcUtil.getConnection();
		String sql = "insert into shop_order(order_date,user_id) value(?,?)";
		String detailSql = "insert into shop_order_detail(order_id,product_id,count) value(?,?,?)";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setTimestamp(1, new Timestamp(order.getOrderDate().getTime()));
			ps.setInt(2, order.getUser().getId());
			ps.execute();
			rs  = ps.getGeneratedKeys();
			int order_id = 0;
			if(rs.next()){
				order_id = rs.getInt(1);
			}
			ps = conn.prepareStatement(detailSql);
			for(OrderDetail od : order.getOrderDetail()){
				ps.setInt(1, order_id);
				ps.setInt(2, od.getProduct().getId());
				ps.setInt(3, od.getCount());
				ps.addBatch();
			}
			ps.executeBatch();
			conn.commit();
			conn.setAutoCommit(true);
		} catch (Exception e) {
			try {
				boolean flag = conn.getAutoCommit();
				if(!flag){
					conn.rollback();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn, ps, rs);
		}
	}
	
	
	public List<Order> getOrderByUser(User user){
		List<Order> list = new ArrayList<Order>();
		Connection conn = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		ProductDao pd = new ProductDao();
		try {
			ps = conn.prepareStatement("select * from shop_order where user_id = ? order by order_date desc");
			ps.setInt(1, user.getId());
			rs = ps.executeQuery();
			while(rs.next()){
				Order order = new Order();
				order.setId(rs.getInt(1));
				order.setOrderDate(new Date(rs.getTimestamp(2).getTime()));
				order.setUser(user);
				order.setOrderDetail(new ArrayList<OrderDetail>());
				list.add(order);
			}
			
			for(Order o : list){
				ps = conn.prepareStatement("select * from shop_order_detail where order_id = ?");
				ps.setInt(1, o.getId());
				rs = ps.executeQuery();
				while(rs.next()){
					OrderDetail od = new OrderDetail();
					od.setId(rs.getInt(1));
					od.setOrder(o);
					od.setProduct(pd.getProductById(rs.getInt(3)));
					od.setCount(rs.getInt(4));
					o.getOrderDetail().add(od);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtil.close(conn,ps,rs);
		}
		
		
		return list;
	}
}
