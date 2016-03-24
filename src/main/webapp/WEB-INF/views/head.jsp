<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="<%=request.getContextPath() %>/lib/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/lib/css/bootstrapValidator.css"
	rel="stylesheet" type="text/css">
	
<script src="<%=request.getContextPath() %>/lib/js/jquery-2.1.4.min.js"></script>
<script src="<%=request.getContextPath() %>/lib/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/lib/js/bootstrapValidator.js"></script>
<%-- <script type="text/javascript"
	src="<%=request.getContextPath()%>/lib/js/zh_CN.js"></script> --%>
<%-- <script src="<%=request.getContextPath() %>/lib/js/head.js"></script> --%>
</head>
<body style="min-width: 800px; background-color:#F5F5F5;">
	<!-- 隐藏存放的变量 -->
	<div style="display: none;">
		<input id="countMassage" type="hidden" value="" /> 
		<%-- <input id="username" type="hidden" value="<%=session.getAttribute("username") %>" /> --%>
		<input id="username" type="hidden" value="${username }" />
	</div>
	
	<div class="container">
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
					<!-- <div class="col-sm-4">
						
					</div> -->
					<div class="col-sm-10">
						<div id="toLoginDiv" style="display:none;">
							<a href="#" data-toggle="modal" data-target="#loginModal">请登录</a> 
							<a href="#" data-toggle="modal" data-target="#registerModal">免费注册</a>
						</div>
						<div id="personalDiv" style="display:none;">
							<div class="row">
								<div class="col-sm-4">
									<label>你好！${username }</label>
									<!-- <button type="button" class="btn btn-info">消息<span class="badge">42</span></button> -->
								</div>
								
								<div class="col-sm-2">
									<button type="button" class="btn btn-info">消息<span class="badge">42</span></button>
								</div>
								
								<div class="col-sm-4">
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
								<div class="col-sm-2">
									<!-- <a href="/TutorInfoSys/logout.html">退出登录</a> -->
									<button class="btn btn-default" type="button" id="logoutBtn">退出登录</button>
								</div>
							</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<hr style="background-color: #6A5ACD; height: 5px;">
	</div>
	
	<jsp:include page="login.jsp"/>
	<jsp:include page="register.jsp"/>
	
	
<script type="text/javascript">
$(function(){
	var username = $("#username").val();
	if($("#username").val() == ""){
		$("#toLoginDiv").show();
	}else{
		$("#personalDiv").show();
	}
	
	$("#logoutBtn").click(function(){
		$.ajax({
			type:"post",
			url:"logout.html",
			error : function(data) {
	            alert( "网络出错 " )
	        },
	        success:function(data){
	        	alert("成功退出");
	        	window.location.reload();//刷新当前页面.
	        }
		})
	})
});
</script>
</body>

</html>