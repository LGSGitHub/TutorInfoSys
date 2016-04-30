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
			<form id="teacherUpdateForm" method="post" class="form-horizontal">
				
				<div class="form-group">
				
					<label class="col-sm-2 control-label">教员编号</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" readonly name="teacherId" value="${dbTeacher.teacherId }"/>
					</div>
					<label class="col-sm-2 control-label">教员名字</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherName" value="${dbTeacher.teacherName }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">教员性别</label>
					<div class="col-sm-2">
						<input id="teacherGender" type="hidden" value="${dbTeacher.teacherGender }"/>
						<select class="form-control" name="teacherGender">
							<option id="male" value="男">男</option>
							<option id="female" value="女">女</option>
						</select>
					</div>
				
					<label class="col-sm-2 control-label">出生日期</label>
					<div class="col-sm-2">
						<input type="text" readonly class="form_datetime form-control"
							name="teacherBirthday" value="${dbTeacher.teacherBirthday }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">教员类型</label>
					<div class="col-sm-2">
						<input type="hidden" id="teacherType" value="${dbTeacher.teacherType }"/>
						<select class="form-control" name="teacherType">
							<option value="">-- 请选择 --</option>
							<option id="personalTea" value="专业教师">专业教师</option>
							<option id="studentTea" value="大学生">大学生</option>
							<option id="ortherTea" value="其他教员">其他教员</option>
						</select>
					</div>
					<label class="col-sm-2 control-label">授课方式</label>
					<div class="col-sm-4 checkbox">
						<input type="hidden" id="teacherTeachWay" value="${dbTeacher.teacherTeachWay }"/>
						<label class="checkbox-inline">
							<input id="teaCome" name="teacherTeachWay" type="checkbox" value="教员上门">教员上门
						</label>
						<label class="checkbox-inline">
							<input id="stuCome" name="teacherTeachWay" type="checkbox" value="学员上门">学员上门
						</label>
						<label class="checkbox-inline">
							<input id="online" name="teacherTeachWay" type="checkbox" value="网上辅导">网上辅导
						</label>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">就读/毕业院校</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherSchool" value="${dbTeacher.teacherSchool }"/>
					</div>
					<label class="col-sm-2 control-label">主修专业</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherMajor" value="${dbTeacher.teacherMajor }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">政治面貌</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherPolitical" value="${dbTeacher.teacherPolitical }"/>
					</div>
					<label class="col-sm-2 control-label">目前身份</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherNowIdentity" value="${dbTeacher.teacherNowIdentity }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">教员邮箱</label>
					<div class="col-sm-2">
						<input type="email" class="form-control" name="teacherEmail" value="${dbTeacher.teacherEmail }"/>
					</div>
					<label class="col-sm-2 control-label">身份证号</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherIdentity" value="${dbTeacher.teacherIdentity }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">手机号码</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherPhone" value="${dbTeacher.teacherPhone }"/>
					</div>
					<label class="col-sm-2 control-label">家教经验</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherExpYear" value="${dbTeacher.teacherExpYear }"/>
					</div>
				</div>
				
				<div class="form-group">
					
					<label class="col-sm-2 control-label">薪酬要求</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" name="teacherSalary" value="${dbTeacher.teacherSalary} "/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">教员住址</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="teacherAddress" value="${dbTeacher.teacherAddress }"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">授课区域</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="teachPlace" value="${dbTeacher.teachPlace }"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">家教科目</label>
					<div class="col-sm-8">
						<textarea style="width:100%;height:100px;" class="form-control" name="teacherSubject">${dbTeacher.teacherShow }</textarea>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">自我描述</label>
					<div class="col-sm-8">
						<textarea style="width:100%;height:100px;" class="form-control" name="teacherShow" value="${dbTeacher.teacherShow }"></textarea>
						<%-- <input type="text" class="form-control" name="teacherShow" value="${dbTeacher.teacherShow }"/> --%>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="col-sm-2 control-label">原密码</label>
					<div class="col-sm-5">
					<input type="password" class="form-control" name="formerPassword"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">新密码</label>
					<div class="col-sm-5">
					<input type="password" class="form-control" name="teacherPassword" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">确认密码</label>
					<div class="col-sm-5">
					<input type="password" class="form-control" name="confirmPassword"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">密码找回问题</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="teacherQuestion" value="${dbTeacher.teacherQuestion }"/>
					</div>
				</div>
					                    
				<div class="form-group">
					<label class="col-sm-2 control-label">密码找回答案</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="teacherAnswer" value="${dbTeacher.teacherAnswer }"/>
					</div>
				</div>
					                    
				<div class="form-group">
					<div class="col-sm-8 col-sm-offset-3">
						<button type="submit" class="btn btn-primary" id="teaUpdateBtn">update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
<script type="text/javascript">
	$(document).ready(function(){
		/* 设置性别的选中状态 */
		if($("#teacherGender").val() == "男"){
			$("#male").attr("selected","selected");
		}
		else{
			$("#female").attr("selected","selected");
		}
		/* 设置教员类型的选中状态 */
		if($("#teacherType").val() == "专业教师"){
			$("#personalTea").attr("selected","selected");
		}
		else if($("#teacherType").val() == "大学生"){
			$("#studentTea").attr("selected","selected");
		}
		else if($("#teacherType").val() == "其他教员"){
			$("#ortherTea").attr("selected","selected");
		}
		/* 设置授课方式的选中状态 */
		if($("#teacherTeachWay").val().indexOf("教员上门") != null){
			$("#teaCome").attr("checked","checked");
		}
		if($("#teacherTeachWay").val().indexOf("学员上门") != null){
			$("#stuCome").attr("checked","checked");
		}
		if($("#teacherTeachWay").val().indexOf("网上辅导") != null){
			$("#online").attr("checked","checked");
		}
		
		/* 设置日期选择插件格式 */
		$(".form_datetime").datetimepicker({
			format: 'yyyy-mm-dd',
			weekStart: 1,
		    todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			forceParse: 0,
		    showMeridian: 1,
		    /* 设置中文 */
		    language: 'zh-CN'
		});
		
		$('#teacherUpdateForm').bootstrapValidator({
		      message: 'This value is not valid',
		      feedbackIcons: {
		          valid: 'glyphicon glyphicon-ok',
		          invalid: 'glyphicon glyphicon-remove',
		          validating: 'glyphicon glyphicon-refresh'
		      },
		      fields: {
		      	teacherName: {
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
		                      field: 'teacherPassword',
		                      message: 'The username and password cannot be the same as each other'
		                  }/* ,
		                  remote:{
		                	  message: 'The username is not available',
		                	  url:'/TutorInfoSys/teaRegisterNameCheck.html'
		                  } */
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
		          teacherPassword: {
		              validators: {
		                  notEmpty: {
		                      message: 'The password is required and cannot be empty'
		                  },
		                  different: {
		                      field: 'teacherName',
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
		          			field: 'teacherPassword',
		                      message: 'The password and its confirm are not the same'
		          		},
		          		different: {
		                      field: 'teacherName',
		                      message: 'The password cannot be the same as username'
		                  }
		          	}
		          },
		          teacherPhone:{
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
		                  }/* ,
		                  remote:{
		                	  message:'The phone number is not available',
		                	  url:'/TutorInfoSys/teaRegisterPhoneCheck.html'
		                  } */
		          	}
		          },
		          teacherSalary:{
		        	  validators:{
			          		notEmpty:{
			          			message:'The phone number is required and cannot be empty'
			          		},
			          		regexp: {
			                      regexp: /^[0-9]+$/,
			                      message: 'The phone number can only consist of number'
			                  }
			          	}
		          }
		      }
		  });
		
		$("#teaUpdateBtn").click(function(){
			var jsonData = $("#teacherUpdateForm").serialize();
			$.ajax({
				type:"post",
				dataType:"json",
				data:jsonData,
				url:"doTeacherInfoUpdate.html",
				error : function(data){
					alert("网络出错")
				},
				success:function(data){
					if(data.status == "SUCCESS"){
						alert("更新成功！");
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