package com.langsin.test;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.ezmorph.object.DateMorpher;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import net.sf.json.util.JSONUtils;

import com.langsin.dao.ProductDao;
import com.langsin.model.Product;

public class TestJsonSimple {

	public void productToJson(){
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new JsonValueProcessor() {
			
			public Object processObjectValue(String key, Object value,
					JsonConfig jsonConfig) {
				if(value instanceof java.util.Date){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					return sdf.format(value);
				}
				return null;
			}
			
			public Object processArrayValue(Object value, JsonConfig jsonConfig) {
				// TODO Auto-generated method stub
				return null;
			}
		});
		
		ProductDao pd = new ProductDao();
		Product product = pd.getProductById(1);
		JSONObject json = JSONObject.fromObject(product,config);
		System.out.println(json.toString());
//		JSONArray array = JSONArray.fromObject(product);
//		System.out.println(array.toString());
//		JSON seria = JSONSerializer.toJSON(product);
//		System.out.println(seria.toString());
		
		String s = json.toString();
		JSONObject js = JSONObject.fromObject(s);
		
		JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{"yyyy-MM-dd HH:mm:ss"}));
		Product p = (Product) JSONObject.toBean(js,Product.class);
		
		System.out.println(p.getId() + "; "+p.getPname());
		
	}
	
	public void listToJson(){
		List<Product> list = new ProductDao().getAllProduct();
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new JsonValueProcessor() {
			
			public Object processObjectValue(String key, Object value,
					JsonConfig jsonConfig) {
				if(value instanceof java.util.Date){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					return sdf.format(value);
				}
				return null;
			}
			
			public Object processArrayValue(Object value, JsonConfig jsonConfig) {
				// TODO Auto-generated method stub
				return null;
			}
		});
		JSONArray json = JSONArray.fromObject(list,config);
		System.out.println(json.toString());
		JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{"yyyy-MM-dd HH:mm:ss"}));
		List<Product> li = (List<Product>) JSONArray.toCollection(json, Product.class);
		for(Product p : li){
			System.out.println(p.getId() + ";"+p.getPname());
		}
	}
	
	public void mapToJson(){
		Map<String, Product> map = new HashMap<String, Product>();
		ProductDao pd = new ProductDao();
		Product p = pd.getProductById(1);
		map.put("one", p);
		JSONObject json = JSONObject.fromObject(map,config());
		System.out.println(json.toString());
		
		Map map3 = new HashMap();
		map3.put("one", Product.class);
		JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{"yyyy-MM-dd HH:mm:ss"}));
		Map<String, Product> map2 = (Map<String, Product>) JSONObject.toBean(json,Map.class,map3);
		Product p2 = map2.get("one");
		
	}
	
	public static void main(String[] args) {
		
		TestJsonSimple tjs = new TestJsonSimple();
//		tjs.productToJson();
//		tjs.listToJson();
		tjs.mapToJson();
	}
	
	public JsonConfig config(){
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new JsonValueProcessor() {
			
			public Object processObjectValue(String key, Object value,
					JsonConfig jsonConfig) {
				if(value instanceof java.util.Date){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					return sdf.format(value);
				}
				return null;
			}
			
			public Object processArrayValue(Object value, JsonConfig jsonConfig) {
				// TODO Auto-generated method stub
				return null;
			}
		});
		return config;
	}
	
	
	
}
