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
<<<<<<< HEAD
    <div class="container-fluid">
	  <div class="row">
	  	<div class="col-md-4 col-sm-6 col-xs-8">
	  		hello world
	  	</div>
	  	<div class="col-md-4 col-md-offset-3 col-sm-6 col-xs-4">
	  		<div class="row">
	  			<div class="col-md-4">hello</div>
	  			<div class="col-md-8"></div>
	  		</div>
	  	</div>
	  	<div class="col-md-4">
	  	</div>
	  </div>
	  <div class="row">
	  	<div class="col-md-12">
	  		<P>Vivamus sagittis lacus vel <del>augue laoreet rutrum</del> faucibus dolor auctor. Duis mollis, est non commodo luctus.</P>
	  		<P class="lead">Vivamus<mark>sagittis</mark> lacus <ins>vel augue laoreet</ins> rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</P>
	  	</div> 
	  </div>
	  <P class="lead">Vivamus<mark>sagittis</mark><em> <strong>lacus</strong></em> <ins>vel augue laoreet</ins> rutrum<u>faucibus dolor au</u>ctor. Duis<small> mollis, </small>est non commodo luctus.</P>
	  
	  <abbr title="hello world" class="initialism">Vivamus</abbr> sagittis lacus vel
	  
	  <address>
	  	<strong>李春</strong><br/>
	  	济南长清大学城<br/>
	  	15064072925
	  	
	  </address>
	  
	  <blockquote class="blockquote-reverse">
	  	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
	  	<footer>来源于，hello<cite>bootstrap</cite></footer>
	  </blockquote>
	  
	  <ul class="list-unstyled list-inline">
	  	<li>hello world</li>
	  	<li>welcome</li>
	  	<li>zhangsan</li>
	  </ul>
	  <dl class="dl-horizontal">
	  	<dt>hello</dt>
	  	<dd>hello world</dd>
	  	<dt>welcome</dt>
		<dd>welcome to China</dd>
	  </dl>
	  
	  <div class="row">
	  	<div class="col-md-6">
	  		<span class="text-overflow" style="text-overflow: ellipsis;display:inline-block;white-space:nowrap;position:absolute;width:80px;height:20px;overflow:hidden;">hello world welcome to China</span>
	  	</div>
	  	<div class="col-md-6">
	  		<p>For example, <code>&lt;section&gt;</code> should be wrapped as inline.</p>
	  	</div>
	  	<div class="col-md-6">
	  		<p>用户输入 <kbd>cd</kbd> 切换</p>
	  	</div>
	  	<div class="col-md-6">
	  		<var>x</var> + <var>y</var> = <var>z</var>
	  		<samp>这段内容是程序自己输出的</samp>
	  	</div>
	  	<div class="col-md-6">
	  		<table class="table table-responsive table-striped table-bordered table-hover">
	  			<tr>
	  				<th>hello world</th>
	  				<th>hello world</th>
	  			</tr>
	  			<tr class="info">
	  				<td>hello world</td>
	  				<td>hello world</td>
	  			</tr>
	  			<tr>
	  				<td class="success">hello world</td>
	  				<td>hello world</td>
	  			</tr>
	  			<tr>
	  				<td>hello world</td>
	  				<td>hello world</td>
	  			</tr>
	  		</table>
	  	</div>
	  </div>
	  
	  <div class="row">
	  	<div class="col-xs-12">
	  		<table class="table table-responsive table-striped table-bordered table-hover">
	  			<tr>
	  				<th>hello world</th>
	  				<th>hello world</th>
	  			</tr>
	  			<tr class="info">
	  				<td>hello worldello worldello worldello worldello world</td>
	  				<td>hello world</td>
	  			</tr>
	  			<tr>
	  				<td class="success">hello world</td>
	  				<td>hello world</td>
	  			</tr>
	  			<tr>
	  				<td>hello world</td>
	  				<td>hello world</td>
	  			</tr>
	  		</table>
	  	</div>
	  </div>
	  <div class="row" style="height:1800px">
	  	<div class="col-md-12">
	  		<form >
	  			<div class="form-group">
		  			<label>Email Address</label>
		  			<input class="form-control"/>
		  		</div>
		  		<div class="form-group">
		  			<label>Password</label>
		  			<input class="form-control"/>
		  		</div>
		  		<div class="form-group">
		  			<label>File input</label>
		  			<input type="file" class="form-control" />
		  			<p class="help-block">文件上传</p>
		  		</div>
		  		<div class="checkbox">
		  			<label>
		  				<input type="checkbox"> Check me Out
		  			</label>
		  		</div>
		  		<div class="radio">
		  			<label>
		  				<input type="radio"/> Nan
		  			</label>
		  		</div>
		  		<button type="submit" class="btn btn-default">submit</button>
	  		</form>
	  	</div>
	  	<div class="col-md-12">
	  		<form class="form-inline">
	  			<div class="form-group">
	  				<label for="username" class="sr-only">Username</label>
	  				<input type="text" name="username" id="username" class="form-control">
	  			</div>
	  			<div class="form-group">
	  				<label for="password">Password</label>
	  				<input type="password" name="password" id="password" class="form-control">
	  			</div>
	  			<button type="submit" class="btn btn-default">提交</button>
	  		</form>
	  	</div>
	  	<div class="col-md-12">
	  		<form class="form-inline">
	  			<div class="form-group">
	  				<label class="sr-only">人民币</label>
	  				<div class="input-group">
	  					<div class="input-group-addon">￥</div>
	  					<input type="text" class="form-control"/>
	  					<div class="input-group-addon">.00</div>
	  				</div>
	  			</div>
	  			<button type="submit" class="btn btn-primary">提交</button>
	  		</form>
	  	</div>
	  	<div class="col-md-6 col-md-offset-3">
	  		<form class="form-horizontal">
	  			<div class="form-group">
	  				<label for="email" class="col-md-2 control-label">Email</label>
	  				<div class="col-md-10">
	  					<input type="text" id="email" class="form-control" />
	  				</div>
	  			</div>
	  			<div class="form-group">
	  				<label class="col-md-2 control-label">Password</label>
	  				<div class="col-md-10">
	  					<input type="text" id="pwd" class="form-control">
	  				</div>
	  			</div>
	  			<div class="form-group">
	  				<div class="col-md-10 col-md-offset-2">
	  					<div class="checkbox disabled">
	  						<label>
	  							<input type="checkbox" disabled="disabled"> check me 
	  						</label>
	  					</div>
	  				</div>
	  			</div>
	  			<div class="form-group">
  					<label class="col-md-2 control-label">输入内容</label>
  					<div class="col-md-10">
  						<textarea rows="" cols="" class="form-control"></textarea>
  					</div>
	  			</div>
	  			<div class="form-group">
	  				<div class="col-md-10 col-md-offset-2">
		  				<button type="submit" class="btn btn-primary">提交</button>
		  			</div>
	  			</div>
	  		</form>
	  	</div>
	  	<div class="col-md-12">
	  		<form>
	  			<div class="checkbox">
	  				<label class="checkbox-inline">
	  					<input type="checkbox" > hello
	  				</label>
	  				<label class="checkbox-inline">
	  					<input type="checkbox" > word
	  				</label>
	  				<label class="checkbox-inline">
	  					<input type="checkbox" > welcome
	  				</label>
	  			</div>
	  			<div class="checkbox">
	  				<label>
	  					<input type="checkbox">
	  				</label>
	  			</div>
	  			<div class="form-group">
	  				<label>选择课程</label>
	  				<select class="form-control">
	  					<option value="java">java</option>
	  					<option value="bootstrap">bootstrap</option>
	  				</select>
	  			</div>
	  		</form>
	  	</div>
	  	<div class="col-md-6">
	  		<form class="form-horizontal">
	  			<div class="form-group">
	  				<label class="col-sm-2 control-label">Email</label>
	  				<div class="col-sm-10">
	  					<p class="form-control-static">example@163.com</p>
	  				</div>
	  			</div>
	  		</form>
	  	</div>
	  	<div class="col-md-6">
	  		<form class="form-horizontal">
				<div class="form-group has-success">
					<label class="col-sm-4 control-label" >Email</label>
					<div class="col-sm-8">
						<input type="text" class="form-control"/>
					</div>
				</div>	 
				<div class="form-group has-warning has-feedback">
					<label class="col-sm-4 control-label" >Password</label>
					<div class="col-sm-8">
						<input type="text" class="form-control"/>
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
				</div>	  	
				<div class="form-group has-error has-feedback">
					<label class="col-sm-4 control-label">birthday</label>
					<div class="col-sm-8">
						<input type="text" class="form-control"/>
						<span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
					</div>
				</div>	
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<div class="checkbox" >
							<label>
								<input type="checkbox"> remmber password
							</label>
						</div>
					</div>
				</div>
				<div class="form-group has-success has-feedback">
					<label class="col-sm-4 control-label"></label>
					<div class="col-sm-8">
						<div class="input-group">
							<span class="input-group-addon">@</span>
							<input type="text" class="form-control"/>
						</div>
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit"  class="btn btn-default">登录</button>
					</div>
				</div>
	  		</form>
	  	</div>
	  	<div class="col-md-6">
	  		<form>
	  			<div class="form-group">
	  				<input class="form-control input-lg" type="text"/>
	  			</div>
	  			<div class="form-group">
	  				<input class="form-control" type="text"/>
	  			</div>
	  			<div class="form-group">
	  				<input class="form-control input-sm" type="text"/>
	  			</div>
	  			<div class="form-group">
	  				<select class="form-control input-lg"></select>
	  			</div>
	  			<div class="form-group">
	  				<select class="form-control input-sm"></select>
	  			</div>
	  			
	  		</form>
	  	</div>
	  	<div class="col-md-6">
	  		<form class="form-horizontal">
	  			<div class="form-group form-group-lg">
	  				<label class="col-sm-4 control-form">username</label>
	  				<div class="col-sm-8">
	  					<input type="text" class="form-control">
	  				</div>
	  			</div>
	  			<div class="form-group">
	  				<label class="col-sm-4 control-form">username</label>
	  				<div class="col-sm-8">
	  					<input type="text" class="form-control">
	  				</div>
	  			</div>
	  		</form>
	  	</div>
	  	<div class="col-md-6">
	  	
	  		<div class="row">
	  			<div class="col-sm-2">
	  				<input type="text" class="form-control"/>
	  			</div>
	  			<div class="col-sm-4">
	  				<input type="text" class="form-control"/>
	  			</div>
	  			<div class="col-sm-6">
	  				<input type="text" class="form-control"/>
	  			</div>
	  		</div>
	  	</div>
	  	<div class="col-md-6">
	  		<a role="button" class="btn btn-default">link</a>
	  		<button class="btn">button</button>
	  		<input type="submit" class="btn" value="submit">
	  	</div>
	  	<div class="col-md-6">
	  		<button class="btn btn-default">default</button>
			<button class="btn btn-success">success</button>
			<button class="btn btn-primary">primary</button>
			<button class="btn btn-info">info</button>
			<button class="btn btn-warning">warning</button>
			<button class="btn btn-danger">danger</button>
			<button class="btn btn-link">link</button>
			<button class="btn btn-success btn-lg">btn-lg</button>
			<button class="btn btn-success btn-sm">btn-sm</button>
			<button class="btn btn-success btn-xs btn-block">btn-xs</button>
	  	</div>
	  	<div class="col-md-12">
	  		<button class="btn btn-info">btn-info</button>
	  		<button class="btn btn-info active">btn-info</button>
	  		<button class="btn btn-info" disabled="disabled">btn-info</button>
	  	</div>
	  	<div class="col-md-3">
	  		<img alt="" src="image/abc.png" class="img-responsive">
	  	</div>
	  	<div class="col-md-3">
	  		<img alt="" src="image/abc.png" width="100%" class="img-rounded">
	  	</div>
	  	<div class="col-md-3">
	  		<img alt="" src="image/abc.png" width="100%" class="img-circle">
	  	</div>
	  	<div class="col-md-3">
	  		<img src="image/abc.png"  width="100%" class="img-thumbnail"/>
	  	</div>
	  	
	  </div>
	  <div class="col-md-12">
	  	<p class="bg-primary">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
	  	<p class="bg-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
	  	<p class="bg-warning">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
	  </div>
	</div>
	<div class="row" style="height:20px">
		<div class="col-md-12">
			<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<span class="caret"></span>
		</div>
		<div class="center-block hidden" style="width:200px;height:200px;background:red"></div>
	</div>
	<h1 class="text-hide">Custom heading</h1>
	<div class="row" style="height: 2000px">
		
		<div class="col-md-12">
			<div class="btn-group">
				<button class="btn btn-default">
					<span class="glyphicon glyphicon-align-left"></span>
				</button>
				<button class="btn btn-default">
					<span class="glyphicon glyphicon-align-center"></span>
				</button>
				<button class="btn btn-default">
					<span class="glyphicon glyphicon-align-right"></span>
				</button>
			</div>
		</div>
		<div class="col-md-3">
			
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
					Dropdown <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a>Action</a></li>
					<li><a>Another Action</a></li>
					<li><a>Somthing in here</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3">
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					dropup <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li class="dropdown-header">this is title</li>
					<li><a>Action</a></li>
					<li><a>Action</a></li>
					<li class="dropdown-header">this is another title</li>
					<li><a>Action</a></li>
				</ul>
			</div>
			
		</div>
		<div class="col-md-3">
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					选择课程 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li> <a>Java入门</a></li>
					<li><a>JavaScript权威指南</a></li>
					<li class="disabled"><a>Bootstrap实战</a></li>
					<li class="divider"></li>
					<li><a>Structs文档</a></li>
				</ul>
			</div>
 		</div>
 		<div class="col-md-12">
 			<div class="btn-toolbar" role="toolbar">
 				<div class="btn-group btn-group-lg" role="group">
	 				<button class="btn btn-default">left</button>
	 				<button class="btn btn-default">center</button>
	 				<button class="btn btn-default">right</button>
	 			</div>
	 			<div class="btn-group btn-group-lg" role="group">
	 				<button class="btn btn-default">left</button>
	 				<button class="btn btn-default">center</button>
	 				<button class="btn btn-default">right</button>
	 			</div>
	 			<div class="btn-group btn-group-lg" role="group">
	 				<button class="btn btn-default">点击</button>
	 			</div>
 			</div>
 		</div>
			
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

=======
  
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
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
>>>>>>> 7fea4354e35958594d418235b6feecb73d6ba0d1
  </body>
</html>



