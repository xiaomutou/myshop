package com.langsin.servlet;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadServlet2 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		InputStream is = req.getInputStream();
//		byte[] buf = new byte[1024];
//		int hasRead = 0;
//		StringBuffer sb = new StringBuffer();
//		while((hasRead = is.read(buf))!=-1){
//			sb.append(new String(buf,0,hasRead,"utf-8"));
//		}
//		String content = sb.toString();
//		is.close();
//		System.out.println(content);
		
		//DiskFileItemFactory ServletFileUpload FileItem
		
		String path = getServletContext().getRealPath("/upload/");//获取文件存放路径
		
		File tempFile = new File(path,"/tmp/");
		if(!tempFile.exists()){
			tempFile.mkdirs();
		}
		//创建文件上传工厂
		DiskFileItemFactory facotory = new DiskFileItemFactory();
		//如果上传文件大小超过某一范围,会先把文件上传到临时目录，然后在上传到目标路径，设置临时目录
		facotory.setRepository(tempFile);
		//当上传文件超过该值得时候会先上传到临时目录
		facotory.setSizeThreshold(1024*1024);
		
		//该类主要负责文件的上传，解析request对象中的form表单数据，把表单数据封装的FileItem中
		ServletFileUpload sfu = new ServletFileUpload(facotory);
		//设置上传文件的最大值
//		sfu.setFileSizeMax(1024*1024 * 1024 * 100);
		sfu.setHeaderEncoding("UTF-8");
		Map<String, String> map = new HashMap<String, String>();
		try {
			//将request对象中的form解析成FileItem，每一个表单域对应一个fileItem对象
			List<FileItem> items = sfu.parseRequest(req);
			for(FileItem item : items){
				
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("UTF-8"));
				}else{
					//处理要上传的文件
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
					String fileDir = path + "/real/"+sdf.format(date)+"/";
					File dirFile = new File(fileDir);
					if(!dirFile.exists()){
						dirFile.mkdirs();
					}
					SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String originFileName = item.getName();
					String extName = originFileName.substring(originFileName.lastIndexOf("."));
					String newFileName = sdf2.format(date)+extName;
					File newFile = new File(fileDir,newFileName);
					item.write(newFile);
					
					map.put(item.getFieldName(), req.getContextPath() + fileDir + newFileName);
				}
				
//				//获得表单域的name属性值
//				String filedName = item.getFieldName();
//				//获得表单域的内容
//				String string = item.getString("UTF-8");
//				//获得要上传的文件名
//				String fileName = item.getName();
//				//该表单域是一个file类型还是一个普通类型
//				boolean flag = item.isFormField();
//				
//				boolean f = item.isInMemory();
//				
//				System.out.println("filedName = "+filedName);
//				System.out.println("string = "+ string);
//				System.out.println("fileName = "+fileName);
//				System.out.println("flag = "+flag);
//				System.out.println("f = "+f);
//				System.out.println(" ====================");
				
				
			}
			
			
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	
	
	
	
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
}
