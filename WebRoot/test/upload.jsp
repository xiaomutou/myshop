<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试文件上传</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
    
    
    <form action="upload2" method="post" enctype="multipart/form-data">
    	username:<input type="text" name="username"/><br/><br/>
    	file : <input type="file" name="file"/><br/><br/>
    	
    	<input type="submit" value="上传文件"/>
    </form>
    
    
    
    
    
    
    
    
  </body>
</html>
