<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />

<style type="text/css">
	
</style>
</head>
<body>
	
	<div class="container">
		<!-- 查看/修改个人信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>查看/修改个人信息</strong>
		</div>
		<div class="row">
		<form id="studentUpdateForm" method="post" class="form-horizontal">
			
			<div class="form-group">
				<label class="col-sm-3 control-label">用户名</label>
				<div class="col-sm-5">
					<input type="hidden" value="${dbStudent.studentId }" name="studentId"/>
					<input id="studentName" type="text" class="form-control" name="studentName" value="${dbStudent.studentName }"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">原密码</label>
				<div class="col-sm-5">
				<input type="password" class="form-control" name="formerPassword"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">新密码</label>
				<div class="col-sm-5">
				<input type="password" class="form-control" name="studentPassword" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">确认密码</label>
				<div class="col-sm-5">
				<input type="password" class="form-control" name="confirmPassword"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">手机号码</label>
				<div class="col-sm-5">
				<input id="studentPhone" type="text" class="form-control" name="studentPhone" value="${dbStudent.studentPhone }"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">邮箱</label>
				<div class="col-sm-5">
				<input type="email" class="form-control" name="studentEmail" value="${dbStudent.studentEmail }"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">密码找回问题</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="studentQuestion" value="${dbStudent.studentQuestion }"/>
					<!-- <select class="form-control" name="studentQuestion">
					<option value="">-- 选择一个问题 --</option>
					<option value="你的幸运数字是？">你的幸运数字是？</option>
					<option value="你最喜欢的城市是？">你最喜欢的城市是？</option>
					<option value="你最喜欢的动物是？">你最喜欢的动物是？</option>
					<option value="你最喜欢的明星是？">你最喜欢的明星是？</option>
					</select> -->
				</div>
			</div>
				                    
			<div class="form-group">
				<label class="col-sm-3 control-label">密码找回答案</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="studentAnswer" value="${dbStudent.studentAnswer }"/>
				</div>
			</div>
				                    
			<div class="form-group">
				<div class="col-sm-8 col-sm-offset-3">
					<button type="submit" class="btn btn-primary" id="stuUpdateBtn">update</button>
				</div>
			</div>
		</form>
		</div>
	</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#studentUpdateForm').bootstrapValidator({
		      message: 'This value is not valid',
		      feedbackIcons: {
		          valid: 'glyphicon glyphicon-ok',
		          invalid: 'glyphicon glyphicon-remove',
		          validating: 'glyphicon glyphicon-refresh'
		      },
		      fields: {
		      	studentName: {
		              message: 'The username is not valid',
		              validators: {
		                  notEmpty: {
		                      message: 'The username is required and cannot be empty'
		                  },
		                  stringLength: {
		                      min: 6,
		                      max: 20,
		                      message: 'The username must be more than 6 and less than 20 characters long'
		                  },
		                  regexp: {
		                      regexp: /^[a-zA-Z0-9_\.]+$/,
		                      message: 'The username can only consist of alphabetical, number, dot and underscore'
		                  },
		                  different: {
		                      field: 'studentPassword',
		                      message: 'The username and password cannot be the same as each other'
		                  },
		                  remote:{
		                	  message: 'The username is not available',
		                      url: '/TutorInfoSys/stuRegisterNameCheck.html'
		                  }
		              }
		          },
		          formerPassword:{
		        	  validators:{
		        		  notEmpty: {
		                      message: 'The password is required and cannot be empty'
		                  },
		                  stringLength:{
			                  	min:6,
			                  	max:20,
			                  	message: 'The password must be more than 6 and less than 20 characters long'
			              }
		        	  }
		          },
		          studentPassword: {
		              validators: {
		                  notEmpty: {
		                      message: 'The password is required and cannot be empty'
		                  },
		                  different: {
		                      field: 'studentName',
		                      message: 'The password cannot be the same as username'
		                  },
		                  different: {
		                      field: 'formerPassword',
		                      message: 'The password cannot be the same as formerPassword'
		                  },
		                  stringLength:{
		                  	min:6,
		                  	max:20,
		                  	message: 'The password must be more than 6 and less than 20 characters long'
		                  }
		              }
		          },
		          confirmPassword:{
		          	validators:{
		          		notEmpty:{
		          			message:'The confirm password is required and cannot be empty'
		          		},
		          		identical: {
		          			field: 'studentPassword',
		                      message: 'The password and its confirm are not the same'
		          		},
		          		different: {
		                      field: 'studentName',
		                      message: 'The password cannot be the same as username'
		                  }
		          	}
		          },
		          studentPhone:{
		          	validators:{
		          		notEmpty:{
		          			message:'The phone number is required and cannot be empty'
		          		},
		          		regexp: {
		                      regexp: /^[0-9]+$/,
		                      message: 'The phone number can only consist of number'
		                  },
		                stringLength:{
		                  	min : 11,
		                  	max : 11,
		                  	message : 'The phone number must be 11 characters long'
		                  },
		                  remote:{
		                	  message:'The phone number is not available',
		                	  url:'/TutorInfoSys/stuRegisterPhoneCheck.html'
		                  }
		          	}
		          }
		      }
		  });
		
		$("#stuUpdateBtn").click(function(){
			var jsonData = $("#studentUpdateForm").serialize();
			$.ajax({
				type:"post",
				dataType:"json",
				data:jsonData,
				url:"doStudentInfoUpdate.html",
				error : function(data){
					alert("网络出错")
				},
				success:function(data){
					if(data.status == "SUCCESS"){
						alert("更新成功！");
						window.location.reload();//刷新当前页面.
					}
					else{
						alert("原密码错误！");
					}
				}
			})
		});
	})

</script>

</body>
</html>