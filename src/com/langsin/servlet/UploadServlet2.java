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
		
		String path = getServletContext().getRealPath("/upload/");//��ȡ�ļ����·��
		
		File tempFile = new File(path,"/tmp/");
		if(!tempFile.exists()){
			tempFile.mkdirs();
		}
		//�����ļ��ϴ�����
		DiskFileItemFactory facotory = new DiskFileItemFactory();
		//����ϴ��ļ���С����ĳһ��Χ,���Ȱ��ļ��ϴ�����ʱĿ¼��Ȼ�����ϴ���Ŀ��·����������ʱĿ¼
		facotory.setRepository(tempFile);
		//���ϴ��ļ�������ֵ��ʱ������ϴ�����ʱĿ¼
		facotory.setSizeThreshold(1024*1024);
		
		//������Ҫ�����ļ����ϴ�������request�����е�form�����ݣ��ѱ����ݷ�װ��FileItem��
		ServletFileUpload sfu = new ServletFileUpload(facotory);
		//�����ϴ��ļ������ֵ
//		sfu.setFileSizeMax(1024*1024 * 1024 * 100);
		sfu.setHeaderEncoding("UTF-8");
		Map<String, String> map = new HashMap<String, String>();
		try {
			//��request�����е�form������FileItem��ÿһ�������Ӧһ��fileItem����
			List<FileItem> items = sfu.parseRequest(req);
			for(FileItem item : items){
				
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("UTF-8"));
				}else{
					//����Ҫ�ϴ����ļ�
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
				
//				//��ñ����name����ֵ
//				String filedName = item.getFieldName();
//				//��ñ��������
//				String string = item.getString("UTF-8");
//				//���Ҫ�ϴ����ļ���
//				String fileName = item.getName();
//				//�ñ�����һ��file���ͻ���һ����ͨ����
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
