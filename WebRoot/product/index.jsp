<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<style type="text/css">
		.container{
			height:200px;
			background:red;
		}
		.col-md-0{
			height:200px;
			border:2px solid blue;
		}
		.col-md-5{
			height:300px;
			background:blue;
		}
		.col-md-8{
			height:200px;
		}
	</style>
  </head>
  
  <body>
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
	  </div>
	  
	  
	  
	</div>
  </body>
</html>
