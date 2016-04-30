<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教员详情</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />

<style type="text/css">
	#btnsDiv{
		margin:10px auto;
		width:500px;
	}
</style>
	
</head>
<body>

	<div class="container">
		<!-- 基本信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>基本信息</strong>
		</div>
		
		<div class="row afterTitleDiv">
			<div class="col-sm-2 textLabel">教员编号：</div>
			<div class="col-sm-3">${dbTeacher.teacherId }</div>
			<div class="col-sm-2 textLabel">教员名字：</div>
			<div class="col-sm-5">${dbTeacher.teacherName }</div>
		
			<div class="col-sm-2 textLabel">教员性别：</div>
			<div class="col-sm-3">${dbTeacher.teacherGender }</div>
			<div class="col-sm-2 textLabel">出生日期：</div>
			<div class="col-sm-5">${dbTeacher.teacherBirthday }</div>
			
			<div class="col-sm-2 textLabel">就读/毕业院校：</div>
			<div class="col-sm-3">${dbTeacher.teacherSchool }</div>
			<div class="col-sm-2 textLabel">主修专业：</div>
			<div class="col-sm-5">${dbTeacher.teacherMajor }</div>
			
			<div class="col-sm-2 textLabel">政治面貌：</div>
			<div class="col-sm-3">${dbTeacher.teacherPolitical }</div>
			<div class="col-sm-2 textLabel">目前身份：</div>
			<div class="col-sm-5">${dbTeacher.teacherNowIdentity }</div>
			
		</div>
		
		<!-- 家教信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>家教信息</strong>
		</div>
		
		<div class="afterTitleDiv">
			<table class="table table-hover table-bordered">
				<thead></thead>
				<tbody>
					<tr>
						<th width="20%" class="textLabel">授课科目</th>
						<td width="80%">${dbTeacher.teacherSubject }</td>
					</tr>
					<tr>
						<th class="textLabel">授课区域</th>
						<td>${dbTeacher.teachPlace }</td>
					</tr>
					<tr>
						<th class="textLabel">家教经验</th>
						<td>${dbTeacher.teacherExpYear }</td>
					</tr>
					<tr>
						<th class="textLabel">薪酬要求</th>
						<td>${dbTeacher.teacherSalary }元/小时</td>
					</tr>
					<tr>
						<th class="textLabel">教学方式</th>
						<td>${dbTeacher.teacherTeachWay }</td>
					</tr>
					<tr>
						<th class="textLabel">自我描述</th>
						<td>${dbTeacher.teacherShow }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="btnsDiv">
			<input type="button" class="btn btn-primary" id="bookBtn" value="在线预约"/>
			<input type="button" class="btn btn-success" id="collectBtn" value="收藏教员"/>
			<input type="button" class="btn btn-warning" id="createMessgBtn" value="给ta留言"/>
		</div>
		<form action="toNewOrder.html" method="post" id="toNewOrderForm">
			<input type="hidden" id="teacherId" name="teacherId" value="${dbTeacher.teacherId }"/>
		</form>
		
		<!-- 发送留言模态框 -->
		<div class="modal fade" id="sendMessageModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">please input your message</h4>
					</div><!-- modal-header -->
	
					<form id="sendMessageForm" method="post">
					
					<div class="modal-body">
						<div class="form-group">
							<label></label>
							<div>
								<input name="receiverId" type="hidden" value="${dbTeacher.teacherId }"/>
							</div>
						</div>
						<div class="form-group">
					    	<label></label>
					        <div>
					        	<textarea name="messageContent" style="width:100%;height:150px;resize: none;"></textarea>
					        </div>
					    </div>
						
					</div> <!-- modal body  -->
					
					<div class="modal-footer">
								<button type="submit" class="btn btn-primary" id="sendMessgBtn">Submit</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div> <!-- modal-footer -->
					</form> <!-- sendMessageForm -->
				</div><!-- modal-content -->
			</div><!-- modal-dialog -->
		</div>
		
	</div>

<script type="text/javascript">
	$(document).ready(function(){
		
		/* 表单验证 */
		$("#sendMessageForm").bootstrapValidator({
			message: 'This value is not valid',
		    feedbackIcons: {
		        valid: 'glyphicon glyphicon-ok',
		        invalid: 'glyphicon glyphicon-remove',
		        validating: 'glyphicon glyphicon-refresh'
		    },
		    fields: {
		    	messageContent :{
		    		message: 'The message is not valid',
		            validators: {
		            	notEmpty: {
		                    message: 'The message is required and cannot be empty'
		                }
		            }
		    	}
			}
		});/* 表单验证 */
		
		/* 预约按钮点击事件 */
		$("#bookBtn").click(function(){
			$.ajax({
				type : "post",
				dataType : "json",
				url : "studentBookTeacher.html",
				success : function(data){
					if(data.status == "SUCCESS"){
						/* 跳转到新增订单页面，传递teacherId */
						/* location.href="toNewOrder.html?teacherId="+$("#teacherId").val(); */
						$("#toNewOrderForm").submit();
					}
					else{
						alert(data.message);
					}
				},
				error : function(data){
					alert("网络出错！")
				}
			})
		})/* 预约按钮点击事件 */
		
		/* 给他留言按钮点击事件 */
		$("#createMessgBtn").click(function(){
			$.ajax({
	    		type:"post",
	    		dataType:"json",
	    		url:"isLogin.html",
	    		error:function(data){
	    			alert("网络出错")
	    		},
	    		success:function(data){
	    			if(data.status == true){
	    				/* 显示发送留言消息模态框 */
		    			$("#sendMessageModal").modal('show');
	    			}
	    			else{
	    				alert(data.message);
	    			}
	    		}
	    	});
		})/* 给他留言按钮点击事件 */
		
		/* 发送留言submit按钮点击事件 */
		$("#sendMessgBtn").click(function(){
			var formData = $("#sendMessageForm").serialize();
			$.ajax({
	    		type:"post",
	    		dataType:"json",
	    		data : formData,
	    		url:"sendMessage.html",
	    		error:function(data){
	    			alert("网络出错")
	    		},
	    		success:function(data){
	    			alert(data.status)
	    		}
	    	});
		})/* 发送留言submit按钮点击事件 */
	})
</script>
</body>
</html>