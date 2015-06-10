package com.langsin.test;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
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
	
	public void mapToJson(){
		Map map = new HashMap();
		ProductDao pd = new ProductDao();
		map.put("product",pd.getProductById(2));
		map.put("list",pd.getAllProduct());
		
		GsonBuilder gb = new GsonBuilder();
		gb.setDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Gson gson = gb.create();
		
		String jsonStr = gson.toJson(map);
		System.out.println(jsonStr);
		
		GsonBuilder g2 = new GsonBuilder();
		g2.setDateFormat("yyyy-MM-dd HH:mm:ss");
		g2.registerTypeAdapter(Map.class, new JsonDeserializer<Object>() {

			public Object deserialize(JsonElement json, Type typeOfT,
					JsonDeserializationContext context)
					throws JsonParseException {
				JsonObject mapJsonObject = json.getAsJsonObject();
				JsonElement mapjsonElement = mapJsonObject.get("product");
				
				JsonObject productJsonObject = mapjsonElement.getAsJsonObject();
				
				Product p = new Product();
				p.setId(productJsonObject.get("id").getAsInt());
				p.setPname(productJsonObject.get("pname").getAsString());
				p.setPrice(productJsonObject.get("price").getAsDouble());
				String gpdate = productJsonObject.get("pdate").getAsString();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				try {
					p.setPdate(sdf.parse(gpdate));
				} catch (ParseException e) {
					e.printStackTrace();
				}
				p.setImage(productJsonObject.get("image").getAsString());
				p.setContent(productJsonObject.get("content").getAsString());
				
				Map map = new HashMap();
				map.put("product",p);
				
				JsonElement listJsonElement = mapJsonObject.get("list");
				JsonArray ja = listJsonElement.getAsJsonArray();
				ArrayList<Product> list = new ArrayList<Product>();
				for(int i = 0;i<ja.size();i++){
					JsonElement je = ja.get(i);
					JsonObject jeo = je.getAsJsonObject();
					Product p2 = new Product();
					p2.setId(jeo.get("id").getAsInt());
					p2.setPname(jeo.get("pname").getAsString());
					p2.setPrice(jeo.get("price").getAsDouble());
					String gpdate2 = jeo.get("pdate").getAsString();
					SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					try {
						p2.setPdate(sdf2.parse(gpdate2));
					} catch (ParseException e) {
						e.printStackTrace();
					}
					p2.setImage(jeo.get("image").getAsString());
					p2.setContent(jeo.get("content").getAsString());
					list.add(p2);
				}
				map.put("list", list);
				
				return map;
			}
		});
		Gson gson2 = g2.create();
		Map map2 = gson2.fromJson(jsonStr, Map.class);
		System.out.println(map2.get("product"));
		
	}
	
	
	
	
	public static void main(String[] args) {
		TestJson tj = new TestJson();
//		tj.listToJson();
//		String s = tj.productToJson();
//		
//		Product p = tj.jsonTolist(s);
//		System.out.println(p.getId());
//		tj.stringToJSON();
		
		tj.mapToJson();
	}
}
