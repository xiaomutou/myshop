<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <%@include file="../head.jsp" %>
    <c:forEach items="${orderList}" var="order">
    	<div style="margin:20px 0">
    		<span>订单编号 : </span><span>${order.id }</span>
    		<span>下单日期 : </span><span>${order.orderDate }</span>
    	</div>
    	<c:forEach items="${order.orderDetail}" var = "item">
    		<div style="margin-left:60px">
    			<span>商品名称:${item.product.pname }</span>
    			<span>商品单价:${item.product.price }</span>
    			<span>商品数量:${item.count }</span>
    			<span>商品总价:${item.count * item.product.price }</span>
    		</div>		
    	</c:forEach>
    	
    </c:forEach>
    
    
  </body>
</html>
