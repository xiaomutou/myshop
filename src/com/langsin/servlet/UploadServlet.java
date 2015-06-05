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

public class UploadServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获得系统的当前路径
		String path = getServletContext().getRealPath("/upload");
		//文件上传工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//设置文件限制，当超过该值得时候，先将文件写到临时目录，然后在上传到上传目录
		factory.setSizeThreshold(1024 * 1024 * 1024);
		File file = new File(path , "/tmp/");
		if(!file.exists()){
			file.mkdirs();
		}
		//设置临时文件夹目录
		factory.setRepository(file);
		
		//生成上传工具类，该类需要工厂实例作为参数
		ServletFileUpload sfu = new ServletFileUpload(factory);
		//将request对象解析成文件数据列表
		Map<String, String> map = new HashMap<String, String>();
		try {
			List<FileItem> filist = sfu.parseRequest(req);
			//遍历文件列表
			for(FileItem item : filist){
				if(item.isFormField()){  // 该文件数据是一个普通的表单域
					String filedName = item.getFieldName();
					String filedValue = item.getString("utf-8");
					map.put(filedName, filedValue);
				}else{//不是一个普通的表达域，是要上传的文件
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
					String destFilePath = path + "/real/"+sdf.format(date)+"/";
					File destFile = new File(destFilePath);
					if(!destFile.exists()){
						destFile.mkdirs();
					}
					
					SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String originFileName = item.getName();
					String extName = originFileName.substring(originFileName.lastIndexOf("."));
					
					File storeFile = new File(destFile,sdf2.format(date)+extName);
					
					item.write(storeFile);
					
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	
	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
}
