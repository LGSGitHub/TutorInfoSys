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

<style type="text/css">
	a:link{
		text-decoration:none;
	}
	a:hover{
		text-decoration:none;
		color:#EE7621;
	}
	a:visited{
		text-decoration:none;
	}
	
	#logo{
		width:100%;
		max-height:100px;
	}
	.title{
		outline: #bababa dashed 1px;
		background-color: #8dbff1;
		font-size:20px;
		padding:8px;
		margin: 8px 0px;
	}
	.container{
		background-color:white;
	}
	
	/* label靠右 */
	.textLabel{
		text-align:right;
	}
	.afterTitleDiv{
		font-size:20px;
		border:1px solid #bababa;
		margin:8px;
	}
</style>

</head>
<body style="min-width: 800px; background-color:#D1EEEE;">
	<!-- 隐藏存放的变量 -->
	<div style="display: none;">
		<!-- 消息数量 -->
		<input id="countMassage" type="hidden" value="" /> 
		<!-- 当前登录用户名 -->
		<%-- <input id="username" type="hidden" value="<%=session.getAttribute("username") %>" /> --%>
		<input id="username" type="hidden" value="${username }" />
		<!-- 当前登录角色 -->
		<input id="role" type="hidden" value="${role }" />
	</div>
	
	<div class="container" style="background-color:#D1EEEE;">
		<div class="row">
			<div class="col-sm-3" style="height: 100px;">
				<a href="index.html"><img class="img-responsive img-rounded" id="logo" alt="logo" src="<%=request.getContextPath()%>/lib/images/logo_1.jpg"></a>
				<!-- <h2>精英家教LOGO</h2> -->
			</div>
			<div class="col-sm-8">
				<div class="row">
					<div class="col-sm-12">
						<h3>欢迎来到精英家教，这里将给您提供优质的服务！</h3>
					</div>
					<!-- <div class="col-sm-4">
						
					</div> -->
					<div class="col-sm-10">
						<div id="toLoginDiv" style="display:none;">
							<!-- <a href="#" data-toggle="modal" data-target="#loginModal">请登录</a> 
							<a href="#" data-toggle="modal" data-target="#registerModal">免费注册</a> -->
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">请登录</button>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#registerModal">免费注册</button>
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
										<ul id="dropdown-menu-ul" class="dropdown-menu" aria-labelledby="dropdownMenu1">
											<li><a href="javascript:void(0);" target="_blank" id="personalInfoLink">查看个人信息</a></li>
											<!-- <li><a href="#">修改密码</a></li> -->
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
		
		<!-- <hr style="background-color: #6A5ACD; height: 5px;"> -->
	</div>
	
	<jsp:include page="login.jsp"/>
	<jsp:include page="register.jsp"/>
	
	
<script type="text/javascript">
$(function(){
	if($("#username").val() == ""){
		$("#toLoginDiv").show();
	}else{
		$("#personalDiv").show();
		if($("#role").val() == "student"){
			$("#dropdown-menu-ul").append("<li><a href='toNewOrder.html'>发布订单</a></li>");
		}
	}
	
	/* 退出登录 */
	$("#logoutBtn").click(function(){
		location.href="logout.html";
	});
	
	/* 点击“查看个人信息”，分别跳到对应的连接 */
	$("#personalInfoLink").click(function(){
		
		$.ajax({
			type:"post",
			dataType : "json",
			url:"isLogin.html",
			error : function(data){
				alert("网络出错")
			},
			success : function(data){
				if(data.status == false){
					alert(data.message);
					window.location.reload();//刷新当前页面.
				}
				else{
					
					if($("#role").val() == "student"){
						location.href="toStudentInfoUpdate.html";
					}
					else if($("#role").val() == "teacher"){
						location.href="toTeacherInfoUpdate.html";
					}
					else if($("#role").val() == "admin"){
						location.href="toAdminInfoUpdate.html";
					}
				}
			}
		})
		
	});
});
</script>
</body>

</html>