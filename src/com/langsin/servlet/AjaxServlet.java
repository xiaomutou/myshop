package com.langsin.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

import com.google.gson.JsonArray;
import com.langsin.dao.ProductDao;
import com.langsin.dao.RegionDao;
import com.langsin.model.Product;
import com.langsin.model.ShopRegion;
import com.langsin.util.Page;

public class AjaxServlet extends BasicServlet {


	public void demo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("application/json;charset=utf-8");
		String str = "{\"name\":\"ÕÅÈý\",\"age\":20}";
		out.print(str);
	}
	public void add(HttpServletRequest request , HttpServletResponse response) throws IOException {
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		int addInt1 = Integer.parseInt(add1);
		int addInt2 = Integer.parseInt(add2);
		
		PrintWriter out = response.getWriter();
		out.println(addInt1 + addInt2);
	}
	
	public void getProductByName(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		response.setContentType("application/json;charset=utf-8");
		
		String pname = request.getParameter("pname");
		ProductDao pd = new ProductDao();
		List<Product> list = pd.getProductByPname(pname);
		
		JSONArray json = JSONArray.fromObject(list,config());
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
	}
	
	public void region(HttpServletRequest request ,HttpServletResponse response) throws IOException{
		response.setContentType("application/json;charset=utf-8");
		
		String fatherid = request.getParameter("type");
		RegionDao rd = new RegionDao();
		List<ShopRegion> list = rd.getProductById(fatherid);
		
		JSONArray json = JSONArray.fromObject(list,config());
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
	}
	
	public void pageinfo(HttpServletRequest request ,HttpServletResponse response) throws IOException{
		
		response.setContentType("application/json;charset=utf-8");
		
		ProductDao pd = new ProductDao();
		String currentPage = request.getParameter("pageNum");
		int cp = 0;
		if(currentPage == null || "".equals(currentPage)){
			cp = 1;
		}else{
			cp = Integer.parseInt(currentPage);
		}
		
		
		int total = pd.getTotalCount();
		Page page = new Page(total);
		page.setCurrentpage(cp);
		
		List<Product> list = pd.getProductByPage(page);
		page.setData(list);
		
		JSONObject json = JSONObject.fromObject(page,config());
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
	}
	
	public void excute(HttpServletRequest req, HttpServletResponse resp) {
		
	}
	
	public JsonConfig config(){
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(java.util.Date.class, new JsonValueProcessor() {
			
			public Object processObjectValue(String key, Object value, JsonConfig arg2) {
				if(value == null){
					return null;
				}
				if(value instanceof java.util.Date){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					return sdf.format(value);
				}
				return null;
			}
			
			public Object processArrayValue(Object arg0, JsonConfig arg1) {
				// TODO Auto-generated method stub
				return null;
			}
		});
		return config;
	}

	
}
