<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
   	<%@include file="../head.jsp" %>
   	
   		<table width="80%" align="center"  >
   		
   		<tr>
   			<td>序号</td>
   			<td>商品名称</td>
   			<td>商品图片</td>
   			<td>上架日期</td>
   			<td>商品数量</td>
   			<td>操作</td>
   		</tr>
   		<c:forEach items="${sessionScope.car }" var="p" varStatus="vs">
   			<tr>
   				<td>${vs.count }</td>
   				<td>${p.product.pname }</td>
	   			<td>
	   				<img src="${p.product.image }" width="100px" height="100px"/>
	   			</td>
	   			<td><fmt:formatDate value="${p.product.pdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	   			<td><input type="text" value="${p.count}" style="width:30px"></td>
	   			<td>
	   				<a>查看</a>
	   			</td>	
   			</tr>
   		
   		</c:forEach>
   		<tr>
   			<td colspan="6" align="right">
   				<a href="product?tag=buildOrder">生成订单</a>
   			</td>
   		</tr>
   	
   	
   	</table>
   	
   	
   	
   	
   	
   	
   	
   	
  </body>
</html>
