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
    
    <title>商品列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		tr{
			height:40px;
			font-size:20px;
		}
	</style>
	<script type="text/javascript" src="jquery/jquery-1.11.1.js"></script>
  	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
  </head>
  
  <body>
  	<%@include file="../head.jsp" %>
   
   	<table width="80%" align="center"  >
   		
   		<tr>
   			<td>序号</td>
   			<td>商品名称</td>
   			<td>商品价格</td>
   			<td>商品图片</td>
   			<td>上架日期</td>
   			<td>商品简介</td>
   			<td>操作</td>
   		</tr>
   		<c:forEach items="${requestScope.page.data }" var="p" varStatus="vs">
   			<tr>
   				<td>${vs.count }</td>
   				<td>${p.pname }</td>
	   			<td>
	   				<fmt:formatNumber value="${p.price }" type="currency"></fmt:formatNumber>
	   			</td>
	   			<td>
	   				<img src="${p.image }" width="100px" height="100px"/>
	   			</td>
	   			<td><fmt:formatDate value="${p.pdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	   			<td>${p.content }</td>
	   			<td>
	   				<a href="product?tag=addcar&id=${p.id }">加入购物车</a> | 
	   				<a>查看</a>
	   			</td>	
   			
   			</tr>
   		
   		</c:forEach>
   		<tr>
   		
   			<td colspan="4">
   				
   				<a href="product?tag=indexpage&current=1">首页</a> | 
   				<a href="product?tag=indexpage&current=${page.currentpage ==1? 1 : page.currentpage - 1  }">上一页</a> | 
   				<a>当前 ${requestScope.page.currentpage } 页</a> | 
   				<a href="product?tag=indexpage&current=${requestScope.page.currentpage ==page.totalpage? page.totalpage : page.currentpage + 1  }">下一页</a> | 
   				<a href="product?tag=indexpage&current=${requestScope.page.totalpage  }">最后一页</a> | 
   				<a>总${requestScope.page.totalpage }页</a>
   			
   			</td>
   		</tr>
   	
   	
   	</table>
  
  </body>
</html>



