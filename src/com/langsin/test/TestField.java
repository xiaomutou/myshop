package com.langsin.test;

import java.lang.reflect.Field;

public class TestField {

	public static void main(String[] args) throws IllegalArgumentException, IllegalAccessException {
		Demo demo = new Demo();
		demo.setCount(12);
		demo.setName("ÕÅÈý");
		Class clazz = demo.getClass();
		Field[] field = clazz.getDeclaredFields();
		for(Field f : field){
			f.setAccessible(true);
			if(f.getType().getSimpleName().equals("int")){
				System.out.println(f.getInt(demo));
				
			}
		}
	}
}

class Demo{
	private String name;
	private int count;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		
		return 1000;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
