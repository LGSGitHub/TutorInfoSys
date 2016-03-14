<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

<%-- <link href="<%=request.getContextPath() %>/lib/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/lib/css/bootstrapValidator.css"
	rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/lib/js/jquery-2.1.4.min.js"></script>
<script src="<%=request.getContextPath() %>/lib/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/lib/js/bootstrapValidator.js"></script> --%>

</head>
<body>
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">Login</h4>
				</div>

				<div class="modal-body">
					<!-- The form is placed inside the body of modal -->
					<form id="loginForm" method="post" class="form-horizontal" action="login.html">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户名</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="username"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">密码</label>
							<div class="col-sm-5">
								<input type="password" class="form-control" name="password" />
							</div>
						</div>
						
						<!-- <div class="form-group">
							<label class="col-sm-3 control-label">验证码</label>
							<div class="col-sm-3">
							<input type="text" class="form-control" name="validateCode"
								placeholder="validate code" />
							</div>
							<div class="col-sm-3">验证码</div>
						</div> -->

						<div class="form-group">
							<label class="col-sm-3 control-label">身份</label>
								<div class="col-sm-8">
									<div class="radio radio-inline">
									<label>
										<input type="radio" name="role"value="student" checked /> 学员
									</label>
									</div>
									<div class="radio radio-inline">
										<label> 
										<input type="radio" name="role" value="teacher" /> 教员
										</label>
									</div>
									<div class="radio radio-inline">
										<label> 
										<input type="radio" name="role" value="admin" />管理员
										</label>
									</div>
								</div>
						</div>
						<hr style="background-color:#bababa;">
						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-3">
								<button type="submit" class="btn btn-primary" id="loginBtn">Login</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-3 col-sm-offset-3">
								<a href="#">忘记密码？</a>
							</div>
							<div class="col-sm-4">
								没有帐号？<a href="#">注册一个</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>





	<script type="text/javascript">
		$(document).ready(function() {
					// Generate a simple captcha
					$('#loginForm').bootstrapValidator(
							{
								//        live: 'disabled',
								message : 'This value is not valid',
								feedbackIcons : {
									valid : 'glyphicon glyphicon-ok',
									invalid : 'glyphicon glyphicon-remove',
									validating : 'glyphicon glyphicon-refresh'
									},
									fields : {
										username : {
											message : 'The username is not valid',
											validators : {
												notEmpty : {
													message : 'The username is required and cannot be empty'
													},
													stringLength : {
														min : 6,
														max : 20,
														message : 'The username must be more than 6 and less than 20 characters long'
														},
														regexp : {
															regexp : /^[a-zA-Z0-9_\.]+$/,
															message : 'The username can only consist of alphabetical, number, dot and underscore'
														},
														/*  remote: {
															     url: 'hehe.html',
															     require:true,
															     message: 'The username is not available'
															 }, */
														different : {
															field : 'password',
															message : 'The username and password cannot be the same as each other'
														}
													}
												},
												password : {
													validators : {
														notEmpty : {
															message : 'The password is required and cannot be empty'
														},
														stringLength : {
															min : 6,
															max : 20,
															message : 'The username must be more than 6 and less than 20 characters long'
														},
														different : {
															field : 'username',
															message : 'The username and password cannot be the same as each other'
														}
													}
												}/* ,
												validateCode : {
													validators : {
														notEmpty : {
															message : 'The validate code is required and cannot be empty'
														}
													}
												} */
											}
										});

							// Validate the form manually
							$('#loginBtn').click(function() {
								alert("heh")
							});
					});
		/* function getUserName(){
			$.ajax({
		        type : "post",
		        dataType : "json",
		        data : "",
		        url : "getUserName.html" ,
		        error : function(data) {
		            alert( "网络出错 " )
		        },
		        success : function(data) {
		             if (data != null ) {
		                $("#isUserNameExist").hide();
		            }
		             else{
		            	 $("#isUserNameExist").show();
		            	 alert(this);
		             }
		        }
		    });

		} */
	</script>
</body>

</html>