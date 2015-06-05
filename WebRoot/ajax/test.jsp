<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  <script type="text/javascript">

  	var xmlhttp;
  	if(window.XMLHttpRequest){
		xmlhttp = new XMLHttpRequest();
  	}else if(window.ActiveXObject){
  	  	try{
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
  	  	}catch(e){
	  	  	try {
				xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {}
  	  	}
    }

	function getInfo(){
		var date = new Date();
		xmlhttp.open("GET","ajax_test?t="+date.getTime());
		xmlhttp.onreadystatechange = callback;
		xmlhttp.send();
	}

    function callback(){
		if(xmlhttp.readyState == 4){
			if(xmlhttp.status == 200){
				var result = xmlhttp.responseText;
				alert(result);
				alert(result.name);
			}
		}
    }














    
  
  </script>
  
  <body>
  
  	<button onclick="getInfo()">获取信息</button>
  </body>
</html>
