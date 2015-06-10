<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学习bootstrap</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<script type="text/javascript" src="jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<style type="text/css">
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
		body {
			padding-bottom: 70px;
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
	  			<fieldset disabled="disabled">
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
	  			</fieldset>
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
	  		<form class="form-inline">
	  			<div class="form-group">
	  				<label class="sr-only">Email</label>
	  				<p class="form-control-static">example@163.com</p>
	  			</div>
	  			<div class="form-group">
	  				<label class="sr-only">Password</label>
	  				<input type="password" class="form-control" placeholder="please input you password" disabled="disabled">
	  			</div>
	  			<div class="form-group">
	  				<label >username</label>
	  				<input type="text" class="form-control" readonly="readonly">
	  			</div>
	  			<button type="submit" class="btn btn-default">登陆</button>
	  		</form>
	  	</div>
	  	<div class="col-md-4">
	  		<form class="form-horizontal">
	  			<div class="form-group has-success">
	  				<label class="col-sm-4 control-label">input success</label>
	  				<div class="col-sm-8">
	  					<input type="text" class="form-control ">
	  				</div>
	  			</div>
	  		</form>
	  	</div>
	  </div>
	  <div class="row" style="height:50px">
	  	<div class="col-md-3">
	  		<div class="dropdown">
	  			<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
	  				DropDown <span class="caret"></span>
	  			</button>
	  			<ul class="dropdown-menu" role="menu">
	  				<li><a>Action</a></li>
	  				<li class="divider"></li>
	  				<li><a>Another Action</a></li>
	  				<li class="divider"></li>
	  				<li class="disabled"><a>Something Button</a></li>
	  			</ul>
	  		</div>
	  	</div>
	  	<div class="col-md-3">
	  		<div class="btn-group">
	  			<button class="btn btn-default">Right</button>
	  			<button class="btn btn-default">Center</button>
	  			<button class="btn btn-default">Left</button>
	  		</div>
	  	</div>
	  	<div class="col-md-6">
	  		<div class="btn-toolbar">
	  			<div class="btn-group">
	  				<button class="btn btn-default">Right</button>
	  				<button class="btn btn-default">Right</button>
	  				<button class="btn btn-default">Right</button>
	  			</div>
	  			<div class="btn-group">
	  				<button class="btn btn-default">Center</button>
	  				<button class="btn btn-default">Center</button>
	  				<button class="btn btn-default">Center</button>
	  			</div>
	  			<div class="btn-group">
	  				<button class="btn btn-default">Left</button>
	  			</div>
	  		</div>
	  	</div>
	  </div>
	  <div class="row" style="height:200px">
	  	
	  		<div class="col-md-6">
	  			<div class="btn-group ">
	  				<button class="btn btn-default" >1</button>
	  				<button class="btn btn-default">2</button>
	  				<div class="btn-group">
	  					<div class="dropdown">
	  						<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
	  							action <span class="caret"></span>
	  						</button>
	  						<ul class="dropdown-menu" role="menu">
	  							<li><a>Action</a></li>
	  							<li class="divider"></li>
	  							<li><a>4</a></li>
	  							<li class="divider"></li>
	  							<li><a>5</a></li>
	  						</ul>
	  					</div>
	  				</div>
	  			</div>
	  		</div>
	  		<div class="col-md-6">
	  			<div class="btn-group-vertical">
	  				<button class="btn btn-default">1</button>
	  				<button class="btn btn-default">2</button>
	  				<button class="btn btn-default">3</button>
	  				<button class="btn btn-default">4</button>
	  				<div class="btn-group">
	  					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">122 <span class="caret"></span></button>
	  					<ul class="dropdown-menu">
	  						<li><a>hello wrold</a></li>
	  						<li><a>welcome</a></li>
	  					</ul>
	  				</div>
	  				<button class="btn btn-default">5</button>
	  			</div>
	  		</div>
	  		<div class="col-md-12">
	  			<div class="btn-group btn-group-justified" role="group" aria-label="...">
				  <div class="btn-group" role="group">
				    <button type="button" class="btn btn-default">Left</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" class="btn btn-default">Middle</button>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" class="btn btn-default">Right</button>
				  </div>
				</div>
	  		</div>
	  		<div class="col-md-12">
	  			<div class="btn-group">
	  				<button class="btn btn-info">action</button>
	  				<button class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
	  				<ul class="dropdown-menu" role="menu" >
	  					<li><a>Action</a></li>
	  					<li class="divier"></li>
	  					<li><a>Hello World</a></li>
	  					<li><a>Welcome</a></li>
	  				</ul>
	  			</div>
	  			
	  		</div>
	  		<div class="col-md-3">
	  			<div class="input-group input-group-lg">
	  				<span class="input-group-addon">@</span>
	  				<input type="text" class="form-control">
	  			</div>
	  			<div class="input-group">
	  				<input type="text" class="form-control">
	  				<span class="input-group-addon">@163.com</span>
	  			</div>
	  			<div class="input-group">
	  				<span class="input-group-addon">$</span>
	  				<input type="text" class="form-control">
	  				<span class="input-group-addon">.00</span>
	  			</div>
	  		</div>
	  		<div class="col-md-3">
	  			<div class="input-group">
	  				<span class="input-group-addon">
	  					<input type="checkbox">
	  				</span>
	  				<input type="text" class="form-control">
	  			</div>
	  			<br>
	  			<div class="input-group">
	  				<span class="input-group-addon">
	  					<input type="radio">
	  				</span>
	  				<input type="text" class="form-control">
	  			</div>
	  		</div>
	  		<div class="col-md-3">
	  			<div class="input-group">
	  				<span class="input-group-btn">
	  					<button class="btn btn-default">GO!</button>
	  				</span>
	  				<input type="text" class="form-control">
	  			</div><br>
	  			<div class="input-group">
					<input type="text" class="form-control">
	  				<span class="input-group-btn">
	  					<button class="btn btn-default">GO!</button>
	  				</span>
	  			</div>
	  		</div>
	  		<div class="col-md-3">
	  			<div class="input-group">
	  				<span class="input-group-btn">
	  					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
	  						Go Action <span class="caret"></span>
	  					</button>
	  					<ul class="dropdown-menu" role="menu">
	  						<li><a>Go Hello</a></li>
	  						<li><a>Go Welcome</a></li>
	  					</ul>
	  				</span>
	  				<input type="text" class="form-control">
	  			</div>
	  			<div class="input-group">
	  				<input type="text" class="form-control">
	  				<span class="input-group-btn">
	  					<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
	  						Go Action <span class="caret"></span>
	  					</button>
	  					<ul class="dropdown-menu" role="menu">
	  						<li><a>Go Hello</a></li>
	  						<li><a>Go Welcome</a></li>
	  					</ul>
	  				</span>
	  			</div>
	  		</div>
	  		<div class="col-md-12">
	  			<div class="row">
  					<div class="col-md-4">
			  			<ul class="nav nav-tabs">
			  				<li class="active"><a>Home</a></li>
			  				<li><a>Profiles</a></li>
			  				<li class="disabled"><a>Contact</a></li>
			  			</ul>
			  		</div>
			  		<div class="col-md-4" style="background:red">
			  			<ul class="nav nav-pills nav-justified">
			  				<li class="active"><a>Home</a></li>
			  				<li><a>Profiles</a></li>
							<li><a>Contact</a></li>
			  			</ul>
			  		</div>
			  		<div class="col-md-4">
			  			<ul class="nav nav-pills nav-stacked">
			  				<li class="active"><a>Home</a></li>
			  				<li><a>Profiles</a></li>
							<li><a>Contact</a></li>
			  			</ul>
			  		</div>
	  			</div>
	  		</div>
	  		<div class="col-md-12">
	  			<nav class="navbar navbar-default">
	  				<div class="container-fluid">
	  					<div class="navbar-header">
	  						<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	  							<span class="sr-only">toggle navigation</span>
	  							<span class="icon-bar"></span>
	  							<span class="icon-bar"></span>
	  							<span class="icon-bar"></span>
	  						</button>
	  						<a class="navbar-brand">Brand</a>
	  					</div>
	  					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	  						<ul class="nav navbar-nav">
	  							<li class="active"><a>Link <span class="sr-only">(current)</span></a></li>
	  							<li><a>Link</a></li>
	  							<li class="dropdown">
	  								<a class="dropdown-toggle" data-toggle="dropdown">
	  									Action <span class="caret"></span>
	  								</a>
	  								<ul class="dropdown-menu" role="menu">
	  									<li><a>Action</a></li>
	  									<li class="divider"></li>
	  									<li><a>hello world</a></li>
	  									<li class="divider"></li>
	  									<li><a>welcome to China</a></li>
	  								</ul>
	  							</li>
	  						</ul>
	  						<form class="navbar-form navbar-left">
	  							<div class="form-group">
	  								<input type="text" class="form-control" placeholder="Search">
	  							</div>
	  							<button type="submit" class="btn btn-default">提交</button>
	  						</form>
	  						<ul class="nav navbar-nav navbar-right">
	  							<li><a>Link</a></li>
	  							<li class="dropdown">
	  								<a class="dropdown-toggle" data-toggle="dropdown">
	  									Action <span class="caret"></span>
	  								</a>
	  								<ul class="dropdown-menu">
	  									<li><a>张三</a></li>
	  									<li class="divider"></li>
	  									<li><a>李四</a></li>
	  									<li class="divider"></li>
										<li><a>王五</a></li>
	  								</ul>
	  							</li>
	  						</ul>
	  					</div>
	  				</div>
	  			</nav>
	  		</div>
	  		<div class="col-md-12">
	  			<nav class="navbar navbar-inverse navbar-static-top">
	  				<div class="container-fluid">
	  					<div class="navbar-header">
	  						<a class="navbar-brand">
	  							<img src="image/abc.png" width="20px"/>
	  						</a>
	  					</div>
	  					<ul class="nav navbar-nav">
	  						<li class="active"><a>Link</a></li>
	  						<li ><a>Link</a></li>
	  						<li ><a>Link</a></li>
	  					</ul>
	  					<button class="btn btn-default navbar-btn">按钮</button>
	  					<p class="navbar-text navbar-right">hello,zhangsan</p>
	  				</div>
	  				
	  			</nav>
	  		</div>
	  		<div class="col-md-6">
	  			<ol class="breadcrumb">
	  				<li><a>Home</a></li>
	  				<li><a>Library</a></li>
	  				<li class="active">Data</li>
	  			</ol>
	  		</div>
	  		<div class="col-md-6">
	  			<nav>
	  				<ul class="pagination pagination-lg">
	  					<li>
	  						<a href="javascript:void(0)">
		  						<span>&laquo;</span>
		  					</a>
	  					</li>
	  					<li><a>1</a></li>
	  					<li class="active"><a>2</a></li>
	  					<li><a>3</a></li>
	  					<li class="disabled"><a>4</a></li>
	  					<li>
	  						<a>
	  							<span>&raquo;</span>
	  						</a>
	  					</li>
	  				</ul>
	  			</nav>
	  			<nav>
	  				<ul class="pager">
	  					<li class="previous disabled"><a><span>&larr;</span> Previous</a></li>
	  					<li class="next"><a>Next <span>&rarr;</span></a></li>
	  				</ul>
	  			</nav>
	  		</div>
	  		<div class="col-md-12">
	  			<h2>hello zhangsan,welcome to <span class="label label-default">China</span></h2>
	  			<h2>hello zhangsan,welcome to <span class="label label-success">China</span></h2>
	  			<a>You Message <span class="badge">42</span></a>
	  			<button class="btn btn-primary">You Message <span class="badge"></span></button>
	  		</div>
	  		<div class="col-md-12">
	  			<ul class="nav nav-pills">
	  				<li class="active"><a>Home<span class="badge">2</span></a></li>
	  				<li class="active"><a>Home<span class="badge">2</span></a></li>
	  				<li class="active"><a>Home<span class="badge">2</span></a></li>
	  			</ul>
	  		</div>
	  </div>
	  <div class="row" style="height:1400px">
	  
	  
	  </div>
	  <div class="row" style="height:30px;">
	  	<div class="col-md-12">
	  		<div class="jumbotron">
	  			<h1>Hello World !</h1>
	  			<p>
	  				This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information
	  			</p>
	  			<p>
	  				<button class="btn btn-default btn-lg">Learn More</button>
	  			</p>
	  		</div>
	  	</div>
	  </div>
	  <div class="row" style="height: 1000px">
		<div class="col-md-3">
			<div class="thumbnail">
				<img alt="" src="image/abc.png">
				<div class="caption">
					<h3>thumbnail label</h3>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p>
						<button class="btn btn-default">查看</button>
						<button class="btn btn-primary">加入购物车</button>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<a class="thumbnail">
				<img alt="" src="image/abc.png">
				<div class="caption">
					<h3>thumbnail label</h3>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p>
						<button class="btn btn-default">查看</button>
						<button class="btn btn-primary">加入购物车</button>
					</p>
				</div>
			</a>
		</div>
		<div class="col-md-3">
			<a class="thumbnail">
				<img alt="" src="image/abc.png">
				<div class="caption">
					<h3>thumbnail label</h3>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p>
						<button class="btn btn-default">查看</button>
						<button class="btn btn-primary">加入购物车</button>
					</p>
				</div>
			</a>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<a href="#"><img alt="" src="image/abc.png"></a>
				<div class="caption">
					<h3>thumbnail label</h3>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p>
						<button class="btn btn-default">查看</button>
						<button class="btn btn-primary">加入购物车</button>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="alert alert-success" role="alert">
				Well done! You successfully read this important alert message.
			</div>
			<div class="alert alert-warning" role="alert">
				<strong>Warning!</strong> Better check yourself, you're not looking too good.
			</div>
			<div class="alert alert-info alert-dismissble">
				<button class="close" data-dismiss="alert">
					<span>&times;</span>
				</button>
				<strong>Warning!</strong> Better check yourself, you're not looking too good.
			</div>
			<div class="alert alert-danger" role="alert">
				<strong>Warning!</strong> Better <a href="#" class="alert-link">check yourself, you're </a> not looking too good.
			</div>
		</div>
		<div class="col-md-12">
			
			<div class="media">
				<div class="media-left">
					<a href="#">
						<img alt="" src="image/abc.png" width="50px" height="50px">
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">Media Header</h4>
					<p>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</p>
				</div>
				<div class="media-right">
					<a>
						<img alt="" src="image/abc.png" width="50px" height="50px">
					</a>
				</div>
			</div>
		
		</div>
		<div class="col-md-6 col-md-offset-3">
			<ul class="media-list">
				<li class="media">
					<div class="media-left">
						<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
					</div>
					<div class="media-body">
						<h4 class="media-heading">张三：</h4>
						<p>
							写的相当好啊
						</p>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">李四：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">王五：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
					</div>
				</li>
						<li class="media">
					<div class="media-left">
						<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
					</div>
					<div class="media-body">
						<h4 class="media-heading">张三：</h4>
						<p>
							写的相当好啊
						</p>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">李四：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">王五：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
					</div>
				</li>
						<li class="media">
					<div class="media-left">
						<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
					</div>
					<div class="media-body">
						<h4 class="media-heading">张三：</h4>
						<p>
							写的相当好啊
						</p>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">李四：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a>
									<img alt="" class="media-object" src="image/abc.png" width="50px" height="50px">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">王五：</h4>
								<p>写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊写的不怎样啊，写的不怎样啊，写的不怎样啊，写的不怎样啊</p>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="col-md-4">
			<ul class="list-group">
				<li class="list-group-item">Cras justo odio <span class="badge">2</span></li>
				<li class="list-group-item"><span class="badge">22</span>hello world</li>
				<li class="list-group-item">welcome to China</li>
			</ul>
		</div>
		<div class="col-md-4">
			<div class="list-group">
				<a href="#" class="list-group-item active list-group-item-success"> Cras jsuto odio</a>
				<a href="#" class="list-group-item list-group-item-info">hello world</a>
				<a href="#" class="list-group-item list-group-item-warning">welcome to China</a>
				<a href="#" class="list-group-item disabled">hello ,zhangsan</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="list-group">
				<a class="list-group-item active">
					<h3>hello world</h3>
					<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
				</a>
				<a class="list-group-item">
					<h3>hello world</h3>
					<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
				</a>
				<a class="list-group-item">
					<h3>hello world</h3>
					<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
				</a>
			</div>
		</div>
		<!--  <div class="col-md-8 col-md-offset-2">
			<div class="panel panel-primary">
				<div class="panel-heading">my panel test</div>
				<div class="panel-body">
					ras sit amet nibh libero, in gravida nulla. Nulla vel metus sceleriras sit amet nibh libero, in gravida nulla. Nulla vel metus sceleri
					
					ras sit amet nibh libero, in gravida nulla. Nulla vel metus sceleri
					ras sit amet nibh libero, in gravida nulla. Nulla vel metus sceleri
					ras sit amet nibh libero, in gravida nulla. Nulla vel metus sceleri
				</div>
				<table class="table">
					<tr>
						<th>编号</th>
						<th>姓名</th>
						<th>年龄</th>
					</tr>
					<tr>
						<td>1</td>
						<td>张三</td>
						<td>22</td>
					</tr>
					<tr>
						<td>2</td>
						<td>李四</td>
						<td>25</td>
					</tr>
					<tr>
						<td>3</td>
						<td>王五</td>
						<td>22</td>
					</tr>
					
				</table>
				<div class="list-group">
					<a class="list-group-item active">
						<h3>hello world</h3>
						<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
					</a>
					<a class="list-group-item">
						<h3>hello world</h3>
						<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
					</a>
					<a class="list-group-item">
						<h3>hello world</h3>
						<p>ras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
					</a>
				</div>
				<div class="panel-footer">
					my panel footer
				</div>
			</div>
		</div>-->
		<div class="col-md-4">
			<div class="list-group">
				<a href="javascript:void(0)" onclick="f()" class="list-group-item">hello world</a>
				<a class="list-group-item">zhang san</a>
				<a class="list-group-item">wang wu</a>
				<a class="list-group-item">zhao liu</a>
			</div>
		</div>
		<div class="col-md-8">
			<iframe id="if"></iframe>
		</div>
		<script type="text/javascript">
			function f(){
				var if = document.getElementById("if");
				if.src="index.jsp";
			}
		</script>
		
		</div>
	</div>
	
	
	</div>
	
	
	 
  </body>
</html>
