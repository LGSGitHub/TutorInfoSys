<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单详情</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />

<style type="text/css">
	/* .container{
		background-color:white;
	} */
	
	#btnsDiv{
		margin:0px auto;
		width:500px;
	}
</style>
</head>
<body>
	
	<div class="container">
	
		<div class="row">
			
		</div>
		
		<!-- 个人信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>学员个人信息</strong>
		</div>
		
		<div class="row afterTitleDiv" id="studentInfo">
		
			<input type="hidden" id="role" value="${role }"/>
			<input type="hidden" id="userId" value="${userId }"/>
			<input type="hidden" id="studentId" value="${dbStudentOrder.studentId }"/>
			<input type="hidden" id="orderId" value="${dbStudentOrder.orderId }" />
		
			<div class="col-sm-4 col-sm-offset-1">订单编号：${dbStudentOrder.orderId }</div>
			<div class="col-sm-6">
				订单状态：
				<span class="label label-info">${dbStudentOrder.orderStatus }</span>
			</div>
		
			<div class="col-sm-4 col-sm-offset-1">学员名字：${dbStudentOrder.sName }</div>
			<div class="col-sm-6">学员性别：${dbStudentOrder.sSex }</div>
			
			<div class="col-sm-4 col-sm-offset-1">学员年级：${dbStudentOrder.sGrade }</div>
			<div class="col-sm-6">学员年龄：${dbStudentOrder.sAge }</div>
		</div>
		
		<!-- 订单信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>家教辅导信息</strong>
		</div>
		
		<!-- <div class="row" id="orderInfo">
			<div class="col-sm-2 textLabel">科目</div>
			<div class="col-sm-10">英语</div>
			<div class="col-sm-2 textLabel">授课区域</div>
			<div class="col-sm-10">花都</div>
			<div class="col-sm-2 textLabel">具体地址</div>
			<div class="col-sm-10">花都区学府路1号</div>
			<div class="col-sm-2 textLabel">学员状况描述</div>
			<div class="col-sm-10">基础差，恶补英语</div>
			<div class="col-sm-2 textLabel">授课时间</div>
			<div class="col-sm-10">每周六下午1点到3点</div>
			<div class="col-sm-2 textLabel">教学方式</div>
			<div class="col-sm-10">教员上门</div>
			<div class="col-sm-2 textLabel">教员性别要求</div>
			<div class="col-sm-10">女</div>
			<div class="col-sm-2 textLabel">教员类型要求</div>
			<div class="col-sm-10">大学生</div>
			<div class="col-sm-2 textLabel">对教员具体要求</div>
			<div class="col-sm-10">大学生老师都考虑的，有经验的耐心的</div>
			<div class="col-sm-2 textLabel">薪酬</div>
			<div class="col-sm-10">100元每小时</div>
		</div> -->
		
		<div id="orderInfo" class="afterTitleDiv">
			<table class="table table-hover table-bordered">
				<thead></thead>
				<tbody>
					<tr>
						<th width="20%" class="textLabel">科目</th>
						<td width="80%">${dbStudentOrder.sSubject }</td>
					</tr>
					<tr>
						<th class="textLabel">授课区域</th>
						<td>${dbStudentOrder.sAddress }</td>
					</tr>
					<tr>
						<th class="textLabel">具体地址</th>
						<td>${dbStudentOrder.sDetailAddress }</td>
					</tr>
					<tr>
						<th class="textLabel">学员状况描述</th>
						<td>${dbStudentOrder.sConditionRemarks }</td>
					</tr>
					<tr>
						<th class="textLabel">授课时间</th>
						<td>${dbStudentOrder.sTime }</td>
					</tr>
					<tr>
						<th class="textLabel">教学方式</th>
						<td>${dbStudentOrder.sTeacherWay }</td>
					</tr>
					<tr>
						<th class="textLabel">教员性别要求</th>
						<td>${dbStudentOrder.sRequestSex }</td>
					</tr>
					<tr>
						<th class="textLabel">教员类型要求</th>
						<td>${dbStudentOrder.sRequestQualification }</td>
					</tr>
					<tr>
						<th class="textLabel">对教员具体要求</th>
						<td>${dbStudentOrder.sQualificationRemarks }</td>
					</tr>
					<tr>
						<th class="textLabel">薪酬</th>
						<td>${dbStudentOrder.sPrice }</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="btnsDiv">
			<input type="button" class="btn btn-primary" id="bookBtn" value="在线预约"/>
			<input type="button" class="btn btn-success" id="collectBtn" value="收藏订单"/>
			<input type="hidden" class="btn btn-warning" id="createMessgBtn" value="给ta留言"/>
			<input type="hidden" class="btn btn-danger" id="cancelBtn" value="取消订单"/>
		</div>
		
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
								<input name="receiverId" type="hidden" value="${dbStudentOrder.studentId }"/>
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
		if($("#role").val() == "student" && $("#userId").val() == $("#studentId").val()){
			$("#cancelBtn").attr("type","button");
		}
		
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
				url : "teacherBookOrder.html",
				success : function(data){
					if(data.status == "SUCCESS"){
						messageStudent();
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
	});
	
	function messageStudent(){
		var message = {"receiverId":$("#studentId").val(),"messageContent":"hello,我想预约你的订单","orderId":$("#orderId").val()};
		$.ajax({
			type : "post",
			data : message,
			dataType : "json",
			url : "sendMessage.html",
			success : function(data){
				alert("该学员将会收到您的预约请求，请耐心等待。")
			},
			error : function(data){
				alert("网络出错！")
			}
		})
	}
</script>
</body>
</html>