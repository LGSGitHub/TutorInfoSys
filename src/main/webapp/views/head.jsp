<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="../lib/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="../lib/js/jquery-2.1.4.min.js"></script>
<script src="../lib/js/bootstrap.min.js"></script>

<script src="../lib/js/head.js"></script>
</head>
<body style="min-width: 800px;">
	<!-- 隐藏存放的变量 -->
	<div style="display: none;">
		<input id="countMassage" /> <input id="userName" />
	</div>
	
	<div style="border: 1px solid blue;" class="container">
		<div class="row">
			<div class="col-sm-3" style="border: 1px solid red; height: 100px;">
				<!-- <img alt="logo" height="100px" src="../lib/images/logo.jpg"> -->
				<h2>精英家教LOGO</h2>
			</div>
			<div class="col-sm-8 col-sm-offset-1" style="border: 1px solid red;">
				<div class="row">
					<div class="col-sm-12">
						<h3>欢迎来到精英家教，这里将给您提供优质的服务！</h3>
					</div>
					<div class="col-sm-2">
						<a href="#">消息<span class="badge">42</span></a>
					</div>
					<div class="col-sm-8">
						<div>
							<a href="http://www.baidu.com">请登录</a> <a
								href="http://www.baidu.com">免费注册</a>
						</div>
						<div>
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true">
									个人中心 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
									<li><a href="#">查看个人信息</a></li>
									<li><a href="#">修改密码</a></li>
									<li><a href="#">收藏夹</a></li>
									<li><a href="#">我的订单</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<hr style="background-color: #6A5ACD; height: 5px;">
	</div>

</body>

</html>