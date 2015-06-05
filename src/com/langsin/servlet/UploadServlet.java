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
		//���ϵͳ�ĵ�ǰ·��
		String path = getServletContext().getRealPath("/upload");
		//�ļ��ϴ�����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//�����ļ����ƣ���������ֵ��ʱ���Ƚ��ļ�д����ʱĿ¼��Ȼ�����ϴ����ϴ�Ŀ¼
		factory.setSizeThreshold(1024 * 1024 * 1024);
		File file = new File(path , "/tmp/");
		if(!file.exists()){
			file.mkdirs();
		}
		//������ʱ�ļ���Ŀ¼
		factory.setRepository(file);
		
		//�����ϴ������࣬������Ҫ����ʵ����Ϊ����
		ServletFileUpload sfu = new ServletFileUpload(factory);
		//��request����������ļ������б�
		Map<String, String> map = new HashMap<String, String>();
		try {
			List<FileItem> filist = sfu.parseRequest(req);
			//�����ļ��б�
			for(FileItem item : filist){
				if(item.isFormField()){  // ���ļ�������һ����ͨ�ı���
					String filedName = item.getFieldName();
					String filedValue = item.getString("utf-8");
					map.put(filedName, filedValue);
				}else{//����һ����ͨ�ı������Ҫ�ϴ����ļ�
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
