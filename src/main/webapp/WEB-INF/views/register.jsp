<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
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

	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="height:550px;overflow: auto;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">Register</h4>
				</div>

				<div class="modal-body">
					<div>
						<!-- Nav tabs -->
						<ul class="nav nav-tabs nav-pills" role="tablist">
							<li role="presentation" class="active"><a href="#studentRegister"
								aria-controls="experience" role="tab" data-toggle="tab">学员注册</a></li>
							<li role="presentation"><a href="#teacherRegister"
								aria-controls="tutorNews" role="tab" data-toggle="tab">教员注册</a></li>
						</ul>
		
						<!-- Tab panes -->
						<div class="tab-content">
						
							<!-- 学员注册div -->
							
							<div role="tabpanel" class="tab-pane active" id="studentRegister">
							
								<form id="studentRegstForm" class="form-horizontal" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-5">
											<input id="studentName" type="text" class="form-control" name="studentName"/>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">密码</label>
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
											<input id="studentPhone" type="text" class="form-control" name="studentPhone" />
										</div>
									</div>
									
									<div class="form-group">
				                        <label class="col-sm-3 control-label">邮箱</label>
				                        <div class="col-sm-5">
				                            <input type="email" class="form-control" name="studentEmail" />
				                        </div>
				                    </div>
				                    
				                    <div class="form-group">
				                        <label class="col-sm-3 control-label">密码找回问题</label>
				                        <div class="col-sm-5">
				                            <select class="form-control" name="studentQuestion">
				                                <option value="">-- 选择一个问题 --</option>
				                                <option value="你的幸运数字是？">你的幸运数字是？</option>
				                                <option value="你最喜欢的城市是？">你最喜欢的城市是？</option>
				                                <option value="你最喜欢的动物是？">你最喜欢的动物是？</option>
				                                <option value="你最喜欢的明星是？">你最喜欢的明星是？</option>
				                            </select>
				                        </div>
				                    </div>
				                    
				                    <div class="form-group">
				                        <label class="col-sm-3 control-label">密码找回答案</label>
				                        <div class="col-sm-5">
				                            <input type="text" class="form-control" name="studentAnswer" />
				                        </div>
				                    </div>
				                    
				                    <div class="form-group">
										<div class="col-sm-8 col-sm-offset-3">
											<button type="submit" class="btn btn-primary" id="stuRegisterBtn">Register</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
									
								</form>
							</div>
							
							<!-- 教员注册div -->
							
							<div role="tabpanel" class="tab-pane" id="teacherRegister">
								<form id="teacherRegstForm" class="form-horizontal" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-5">
											<input id="teacherName" type="text" class="form-control" name="teacherName"/>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">密码</label>
										<div class="col-sm-5">
											<input type="password" class="form-control" name="teacherPassword" />
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
											<input id="teacherPhone" type="text" class="form-control" name="teacherPhone" />
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">性别</label>
										<div class="col-sm-5">
											<select class="form-control" name="teacherGender">
				                                <option value="">-- 选择性别 --</option>
				                                <option value="男">男</option>
				                                <option value="女">女</option>
				                            </select>
										</div>
									</div>
									
									<div class="form-group">
				                        <label class="col-sm-3 control-label">邮箱</label>
				                        <div class="col-sm-5">
				                            <input type="email" class="form-control" name="teacherEmail" />
				                        </div>
				                    </div>
				                    
				                    <div class="form-group">
										<div class="col-sm-8 col-sm-offset-3">
											<button type="submit" class="btn btn-primary" id="tchRegisterBtn">Register</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
				                    
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

<script type="text/javascript">
$(document).ready(function() {

	$('#studentRegstForm').bootstrapValidator({
//      live: 'disabled',
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
          studentPassword: {
              validators: {
                  notEmpty: {
                      message: 'The password is required and cannot be empty'
                  },
                  different: {
                      field: 'studentName',
                      message: 'The password cannot be the same as username'
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
  
  /* 教员表单验证 */
  $('#teacherRegstForm').bootstrapValidator({
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
                },
                remote:{
                	message:'The username is not avaliable',
                	url:'/TutorInfoSys/teaRegisterNameCheck.html'
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
                },
                remote:{
                	message:'The phone number is not avaliable',
                	url:'/TutorInfoSys/teaRegisterPhoneCheck.html'
                }
        	}
        },
        teacherGender:{
      	  validators:{
      		  notEmpty:{
      			  message:'The gender is required and cannot be empty'
      		  }
      	  }
        },
        teacherEmail:{
        	validators:{
        		/* notEmpty:{
        			message:'The email is required and cannot be empty'
        		}, */
        	}
        }
    }
});
    
    
    /* 学员注册数据提交 */
    $("#stuRegisterBtn").click(function(){
    	//序列化表单
    	var jsonData = $("#studentRegstForm").serialize();
    	
    	$.ajax({
    		type:"post",
    		dataType:"json",
    		data:jsonData,
    		async: false,
    		url:"/TutorInfoSys/stuRegister.html",
    		error:function(data){
    			alert("网络出错")
    		},
    		success:function(data){
    			if(data.status == "SUCCESS"){
    				alert("注册成功，请登录！")
    			}
    			else{
    				alert("注册失败，请正确填写信息！")
    			}
    		}
    	});
    });
    
    /* 教员注册数据提交 */
    $("#tchRegisterBtn").click(function(){
    	//序列化表单
    	var jsonData = $("#teacherRegstForm").serialize();
    	/* if(jsonData.teacherName == "" || jsonData.teacherPassword =="" || jsonData.teacherGender =="" ||jsonData.teacherPhone ==""){
    		alert("必输字段不能为空");
    		return false
    	} */
    	$.ajax({
    		type:"post",
    		dataType:"json",
    		data:jsonData,
    		async: false,
    		url:"/TutorInfoSys/teaRegister.html",
    		error:function(data){
    			alert("网络出错")
    		},
    		success:function(data){
    			if(data.status == "SUCCESS"){
    				alert("注册成功，请登录！")
    			}
    			else{
    				alert("注册失败，请正确填写信息！")
    			}
    		}
    	});
    });

});
</script>

</body>
</html>