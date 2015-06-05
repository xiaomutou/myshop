package com.langsin.util;

import java.util.List;

public class Page {

	private int begin;
	private int end;
	private int perpagecount = 5;
	private int currentpage;
	private int totalpage;
	private int totalcount;
	private List Data;
	
	public Page(int totalcount,int currentpage) {
		this.totalcount = totalcount;
		this.setCurrentpage(currentpage);
	}
	
	public Page(int totalcount){
		this.totalcount = totalcount;
	}
	
	public int getBegin() {
		this.begin = (getCurrentpage() - 1) * perpagecount; 
		return begin;
	}
	
	public int getEnd() {
		this.end = getBegin() + perpagecount;
		return end;
	}
	public int getPerpagecount() {
		return perpagecount;
	}
	public void setPerpagecount(int perpagecount) {
		this.perpagecount = perpagecount;
	}
	
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		if(currentpage <= 0){
			this.currentpage = 1;
		}else if(currentpage > getTotalpage()){
			this.currentpage = getTotalpage();
		}else{
			this.currentpage = currentpage;
		}
	}
	
	public int getTotalpage() {
		if(totalcount % perpagecount == 0){
			this.totalpage = totalcount / perpagecount;
		}else{
			this.totalpage = totalcount /perpagecount + 1;
		}
		return totalpage;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public List getData() {
		return Data;
	}
	public void setData(List data) {
		Data = data;
	}
}
