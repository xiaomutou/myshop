package com.langsin.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.langsin.dao.ProductDao;
import com.langsin.model.Product;

public class TestJson {

	public void listToJson(){
		List<String> list = new ArrayList<String>();
		list.add("zhangsan");
		list.add("王五");
		list.add("赵六");
		list.add("李四");
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(list);
		System.out.println(jsonStr);
	}
	
	public String listToJson2(){
		ProductDao pd = new ProductDao();
		List<Product> list =pd.getAllProduct();
		
		GsonBuilder gb = new GsonBuilder();
		gb.setPrettyPrinting();
		gb.setDateFormat("yyyy-MM-dd HH:mm:ss");
		Gson gson = gb.create();
		String jsonStr = gson.toJson(list);
		System.out.println(jsonStr);
		return jsonStr;
	}
	
	public void stringToJSON(){
		String content = "{\"name\":\"zhangsan\",\"age\":30}";
		Gson gson = new Gson();
		String s = gson.toJson(content);
		System.out.println(s);
	}
	
	public Product jsonTolist(String s){
		GsonBuilder gb = new GsonBuilder();
		gb.setPrettyPrinting();
		gb.setDateFormat("yyyy-MM-dd HH:mm:ss");
		Gson gson = gb.create();
		return gson.fromJson(s,Product.class);
	}
	
	public String productToJson(){
		ProductDao pd = new ProductDao();
		Product p = pd.getProductById(1);
		GsonBuilder gb = new GsonBuilder();
		gb.setPrettyPrinting();
		gb.setDateFormat("yyyy-MM-dd HH:mm:ss");
		Gson gson = gb.create();
		return gson.toJson(p);
	}
	
	
	
	public static void main(String[] args) {
		TestJson tj = new TestJson();
//		tj.listToJson();
		String s = tj.productToJson();
		
		Product p = tj.jsonTolist(s);
		System.out.println(p.getId());
//		tj.stringToJSON()
//		;
	}
}
