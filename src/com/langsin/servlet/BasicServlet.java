package com.langsin.servlet;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
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

public abstract class BasicServlet extends HttpServlet {
	
	public abstract void excute(HttpServletRequest req, HttpServletResponse resp);
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String tag = req.getParameter("tag");
			if("".equals(tag) || tag == null){
				String contentType = req.getContentType();
				if(contentType.startsWith("multipart/form-data")){
					Map<String, String> map = handleUpload(req);
					tag = map.get("tag");
					Method m = this.getClass().getDeclaredMethod(tag, HttpServletRequest.class,HttpServletResponse.class,Map.class);
					m.invoke(this, req,resp,map);
				}else{
					excute(req, resp);
				}
			}else{
				Method m = this.getClass().getDeclaredMethod(tag, HttpServletRequest.class,HttpServletResponse.class);
				m.invoke(this, req,resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
	private Map<String,String> handleUpload(HttpServletRequest request){
		
		String path = getServletContext().getRealPath("/upload/");//��ȡ�ļ����·��
		String savePath = request.getContextPath() + "/upload/";
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
			List<FileItem> items = sfu.parseRequest(request);
			for(FileItem item : items){
				
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("UTF-8"));
				}else{
					//����Ҫ�ϴ����ļ�
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
					String fileDir = path + "/real/"+sdf.format(date)+"/";
					savePath = savePath + "/real/"+sdf.format(date)+"/";
					File dirFile = new File(fileDir);
					if(!dirFile.exists()){
						dirFile.mkdirs();
					}
					SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String originFileName = item.getName();
					String extName = originFileName.substring(originFileName.lastIndexOf("."));
					String newFileName = sdf2.format(date)+extName;
					savePath = savePath + newFileName;
					File newFile = new File(fileDir,newFileName);
					item.write(newFile);
					
					map.put(item.getFieldName(), savePath);
				}
			}
			
			
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}
