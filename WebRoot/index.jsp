<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		.upload{
			background:red;
		}
	</style>
  </head>
  <script type="text/javascript" src="jquery/jquery-1.11.1.js"></script>
  <script type="text/javascript" src="uploadify/jquery.uploadify.js"></script>
  
  <body>
    
    <form action="upload" method="post" enctype="multipart/form-data">
    
    	username:<input type="text" name="username"><br><br>
    	file :<input type="file" name="file"><br><br>
    	<input type="submit" value="上传文件">
    
    </form>
    
    <div id="uploadify"></div>
    
    
    
  </body>
  <script type="text/javascript">
  	
  	$("#uploadify").uploadify({
  	   	height:30,
  		width:120,
        swf:'uploadify/uploadify.swf',
        uploader:'upload',
        buttonText:"文件上传",
        buttonClass:"upload",
      
  	});
  	
  </script>
  
  
  
</html>
