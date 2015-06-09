<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试ajax</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <script type="text/javascript">
	  
	  
	  /*xmlhttp.open("post","ajax?tag=demo");
	  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	  xmlhttp.onreadystatechange = handle;
	  xmlhttp.send();
	  
	  function handle(){
	  	if(xmlhttp.readyState == 4){
	  	
	  		if(xmlhttp.status == 200){
	  			var result = xmlhttp.responseText;
	  			alert(result);
	  			var json = JSON.parse(result);
	  			alert(json.name);
	  		}
	  	}
	  }*/
	  var xmlhttp;
	  function add(){
		  
		  var add1 = document.getElementsByName("add1")[0].value;
		  var add2 = document.getElementsByName("add2")[0].value;
		  if(isNaN(add1) || isNaN(add2)){
			  alert("请输入整数");
			  return;
		  }
		  xmlhttp= buildXMLHttpRequest();
		  xmlhttp.open("POST","ajax");
		  xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		  xmlhttp.onreadystatechange=handleAdd;
		  xmlhttp.send("tag=add&add1="+add1+"&add2="+add2);
		  
	  }
	  
	  function handleAdd(){
		  if(xmlhttp.readyState == 4){
			  if(xmlhttp.status == 200){
				  var result = document.getElementsByName("result")[0];
				  result.value = xmlhttp.responseText;
			  }
		  }
	  }
	  
	  function getProductInfo(){
		  
		  var pname = document.getElementById("pname").value;
		  xmlhttp = buildXMLHttpRequest();
		  xmlhttp.open("GET","ajax?tag=getProductByName&pname="+pname);
		  xmlhttp.onreadystatechange = handleProduct;
		  xmlhttp.send();
		  
	  }
	  
	  function handleProduct(){
		  if(xmlhttp.readyState == 4){
			  if(xmlhttp.status == 200){
				  var jsonStr = xmlhttp.responseText;
				  var json = eval("("+jsonStr + ")");
				  var tby = document.getElementById("tby");
				  var content = "";
				  for(var i = 0;i<json.length;i++){
					  content　+= "<tr><td>"+json[i].id+"</td><td>"+json[i].pname+"</td><td>"+json[i].price+"</td><td>"+json[i].pdate+"</td></tr>"
				  }
				  tby.innerHTML = content;
			  }
			  
		  }
	  }
	  
	  function getRegionInfo(html,type){
		  xmlhttp = buildXMLHttpRequest();
		  xmlhttp.open("GET","ajax?tag=region&type="+type);
		  xmlhttp.onreadystatechange = _handleRegion(html);
		  xmlhttp.send();
	  }
	  
	  function _handleRegion(html){
		  return function(){
			  if(xmlhttp.readyState == 4){
				  if(xmlhttp.status == 200){
					  var htmlTag = document.getElementById(html);
					  var jsonStr = xmlhttp.responseText;
					  var json = eval("("+jsonStr + ")");
					  htmlTag.length = 1;
					  for(var i = 0;i<json.length;i++){
						  var option = new Option(json[i].region,json[i].regionid);
						  htmlTag[htmlTag.length] = option;
					  }
				  }
			  }
		  }
	  }
	  
	  function pageInfo(pageNum){
		  xmlhttp = buildXMLHttpRequest();
		  xmlhttp.open("GET","ajax?tag=pageinfo&pageNum="+pageNum);
		  xmlhttp.onreadystatechange = handlePage;
		  xmlhttp.send();
	  }
	  
	  function handlePage(){
		  if(xmlhttp.readyState == 4){
			  if(xmlhttp.status == 200){
				  var jsonStr = xmlhttp.responseText;
				  var json = eval("("+jsonStr + ")");
				  var tby = document.getElementById("tby_page");
				  var content = "";
				  for(var i = 0;i<json.data.length;i++){
					  content　+= "<tr><td>"+json.data[i].id+"</td><td>"+json.data[i].pname+"</td><td>"+json.data[i].price+"</td><td>"+json.data[i].pdate+"</td></tr>"
				  }
				  tby.innerHTML = content;
			  }
		  }
	  }
	  
	  function buildXMLHttpRequest(){
		  var xmlhttp ;
		  if(window.XMLHttpRequest){
		  	xmlhttp = new XMLHttpRequest();
		  }else if(window.ActiveXObject){
		  	try {
					xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					try {
						xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e) {}
				}
		  }
		  return xmlhttp;
	  }
	  
	  function init(){
		  getRegionInfo("province", "000000");
		  pageInfo(1);
	  }
  </script>
  <body onload="init()">
    
    <p>输入两个数求和: </p>
    <input type="text" name="add1"> + <input type="text" name="add2"> = <input type="text" name="result"> <button onclick="add()">计算</button>
    
    <P>输入商品名称获取商品信息： </P>
    <input type="text" id="pname" > <button onclick="getProductInfo()">获取商品信息</button>
    <p>
    	<table width="400px" border="1px" cellspacing="0px">
    		<tr>
    			<th>商品编号</th>
    			<th>商品名称</th>
    			<th>商品价格</th>
    			<th>上架日期</th>
    		</tr>
    		<tbody id="tby">
    		
    		</tbody>
    	</table>
    </p>
    <p>选择一个正确的地区</p>
    <P>
    	<select id="province" style="width:150px;height:30px" onchange="getRegionInfo('city',this.value)">
    		<option value="">选择省份</option>
    	</select>
    	<select id="city" style="width:150px;height:30px" onchange="getRegionInfo('county',this.value)">
    		<option value="">选择市</option>
    	</select>
    	<select id="county" style="width:150px;height:30px">
    		<option value="">选择县</option>
    	</select>
    </P>
    <p>无刷新分页</p>
    <p>
    	<table width="500px" border="1px" cellspacing="0px">
    		<tr>
    			<th>商品编号</th>
    			<th>商品名称</th>
    			<th>商品价格</th>
    			<th>上架日期</th>
    		</tr>
    		<tbody id="tby_page">
    			
    		</tbody>
    		<tr>
    			<td colspan="4" align="center">
    				<a href="javascript:void(0)" onclick="pageInfo(1)">首页</a>
    				<a href="javascript:void(0)" onclick="pageInfo('-1')">上一页</a>
    				<a >当前页</a>
    				<a href->下一页</a>
    				<a>最后一页</a>
    				<a>共10页</a>
    				<a>跳转到</a>页
    			</td>
    		</tr>
    	</table>
    </p>
  </body>
</html>
