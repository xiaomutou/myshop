<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script type="text/javascript" src="laydate/laydate.js" charset="UTF-8"></script>
  	<script type="text/javascript" src="kindeditor/kindeditor-all.js"></script>
  	<script type="text/javascript" src="kindeditor/lang/zh_CN.js"></script>
  </head>
  <script type="text/javascript">
  	var items = [
  	           'source', '|', 'undo', 'redo', '|', 'preview', 'cut', 'copy', 'paste',
  	         'plainpaste', 'wordpaste', '|',
  	         'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
  	         'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen',
  	         'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
  	         'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
  	         'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
  	         'anchor', 'link', 'unlink'
  	 ]
  	KindEditor.ready(function(K) {
      window.editor = K.create('#content',{
		 width:"400px",
		 height:"300px",
		 minWidth:"300px",
		 minHeight:"200px",
		 items:items,
		 resizeType:0,
		 newlineTag:"br",
		 
      });
	});
  </script>
  
  <body>
    
    <form action="product" method="post" enctype="multipart/form-data">
    	商品名称:<input type="text" name="pname"><br><br>
    	商品价格:<input type="text" name="price"><br><br>
    	上架日期:<input type="text" name="pdate" onclick="laydate({istime:true,format:'YYYY-MM-DD hh:mm:ss'})"><br><br>
    	商品图片:<input type="file" name="image"><br><br>
    	商品简介:<textarea id="content" rows="" cols="" name="content"></textarea><br><br>
    	<input type="hidden" name="tag" value="addproduct">;
		<input type="submit" value="添加商品">    	
    </form>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
