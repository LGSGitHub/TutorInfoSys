<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言信息</title>
<!-- 头部 -->
<jsp:include page="head.jsp" />
</head>
<body>
	
	<div class="container" style="min-height:500px;">
		<!-- 留言信息标题 -->
		<div class="title">
			<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
			<strong>留言信息</strong>
			<!-- 隐藏域存放未读留言数量 -->
			<input type="hidden" id="newMesgNum" value="${messageCount }"/>
			<input type="hidden" id="userId" value="${userId }"/>
		</div>
		<div id="messagesDiv">
			<%-- <div class="panel panel-info">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-1 textLabel">留言者：</div>
						<div class="col-sm-3">${messageList[0].senterId }</div>
						<div class="col-sm-1 textLabel">时间：</div>
						<div class="col-sm-3">${messageList[0].sendtime }</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-2">留言内容：</div>
						<div class="col-sm-6">${messageList[0].messageContent }</div>
						<div class="col-sm-2">
							<input type="button" id="detailBtn" class="btn btn-info" value="查看详情"/>
						</div>
						<div class="col-sm-2">
							<input type="button" id="acceptBtn" class="btn btn-success" value="接受"/>
							<input type="button" id="refuseBtn" class="btn btn-danger" value="拒绝"/>
						</div>
						
					</div>
				</div>
			</div>
			
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-1 textLabel">留言者：</div>
						<div class="col-sm-3">${messageList[0].senterId }</div>
						<div class="col-sm-1 textLabel">时间：</div>
						<div class="col-sm-3">${messageList[0].sendtime }</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-2">留言内容：</div>
						<div class="col-sm-8">${messageList[0].messageContent }</div>
						<div class="col-sm-2">
							<input type="button" id="replyBtn" class="btn btn-info" value="回复"/>
						</div>
					</div>
				</div>
			</div> --%>
		</div>
		
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
								<input id="receiverId" name="receiverId" type="hidden" value=""/>
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
		/* 页面加载成功后查询留言信息 */
		var urlStr; // 请求查询所有留言或者未读留言信息的url
		var newMessageNum = $("#newMesgNum").val();
		if(newMessageNum == 0){
			urlStr = "queryAllMyMessage.html";
		}
		else{
			urlStr = "queryMyNewMessage.html"
		}
		
		$.ajax({
			type : "post",
			dataType : "json",
			url : urlStr,
			success : function(data){
				$("#messagesDiv").html("");
				$.each(data.messageList, function(){
					var str;
					if(this.senterId == $("#userId").val()){
						str = "<div class='panel panel-info'>"+
						"<div class='panel-heading'>"+
						"<div class='row'>"+
						"<div class='col-sm-1 textLabel'>发送者：</div>"+
						"<div class='col-sm-3'>"+this.senterId+"</div>"+
						"<div class='col-sm-1 textLabel'>接收者：</div>"+
						"<div class='col-sm-3'>"+this.receiverId+"</div>"+
						"<div class='col-sm-1 textLabel'>时间：</div>"+
						"<div class='col-sm-3'>"+this.sendtime+"</div>"+
						"</div>"+
						"</div>"+
						"<div class='panel-body'>"+
						"<div class='row'>"+
						"<div class='col-sm-2'>留言内容：</div>"+
						"<div class='col-sm-8'>"+this.messageContent+"</div>"+
						"</div>"+
						"</div>"+
						"</div>"
					}
					else if(this.orderId){
						str = "<div class='panel panel-info'>"+
						"<div class='panel-heading'>"+
						"<div class='row'>"+
						"<div class='col-sm-1 textLabel'>发送者：</div>"+
						"<div class='col-sm-3'>"+this.senterId+"</div>"+
						"<div class='col-sm-1 textLabel'>接收者：</div>"+
						"<div class='col-sm-3'>"+this.receiverId+"</div>"+
						"<div class='col-sm-1 textLabel'>时间：</div>"+
						"<div class='col-sm-3'>"+this.sendtime+"</div>"+
						"</div>"+
						"</div>"+
						"<div class='panel-body'>"+
						"<div class='row'>"+
						"<div class='col-sm-2'>留言内容：</div>"+
						"<div class='col-sm-6'>"+this.messageContent+"</div>"+
						"<div class='col-sm-2'>"+
						"<a target='_blank' href='toOrderDetail.html?orderId="+this.orderId+"'><input type='button' class='detailBtn btn btn-info' value='查看详情'/></a>"+
						"</div>"+
						"<div class='col-sm-2'>"+
						"<input type='hidden' value='"+this.orderId+"'/>"+
						"<input type='hidden' value='"+this.senterId+"'/>"+
						"<input type='button' class='acceptBtn btn btn-success' value='接受'/>"+
						"<input type='button' class='refuseBtn btn btn-danger' value='拒绝'/>"+
						"</div>"+
						"</div>"+
						"</div>"+
						"</div>";
					}
					else{
						str = "<div class='panel panel-info'>"+
						"<div class='panel-heading'>"+
						"<div class='row'>"+
						"<div class='col-sm-1 textLabel'>发送者：</div>"+
						"<div class='col-sm-3'>"+this.senterId+"</div>"+
						"<div class='col-sm-1 textLabel'>接收者：</div>"+
						"<div class='col-sm-3'>"+this.receiverId+"</div>"+
						"<div class='col-sm-1 textLabel'>时间：</div>"+
						"<div class='col-sm-3'>"+this.sendtime+"</div>"+
						"</div>"+
						"</div>"+
						"<div class='panel-body'>"+
						"<div class='row'>"+
						"<div class='col-sm-2'>留言内容：</div>"+
						"<div class='col-sm-8'>"+this.messageContent+"</div>"+
						"<div class='col-sm-2'>"+
						"<input type='button' class='replyBtn btn btn-info' value='回复'/>"+
						"<input type='hidden' value='"+this.senterId+"'/>"+
						"</div>"+
						"</div>"+
						"</div>"+
						"</div>"
					}
					$("#messagesDiv").append(str);
				})
					
			},
			error : function(){
				alert("网络出错")
			}
		})
		
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
		
		/* 回复按钮的点击事件 */
		$(document).on("click",".replyBtn",function(){
			/* 设置receiverId */
			var receiverId = $(this).parent().find("input").eq(1).val();
			$("#receiverId").val(receiverId);
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
		})
		
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
		})
		
		/* 查看详情按钮点击事件 */
		/* $(document).on("click",".detailBtn",function(){
			
		}) */
		
		
		/* 接受按钮点击事件 */
		$(document).on("click",".acceptBtn",function(){
			var orderId = $(this).parent().find("input").eq(0).val();
			var senterId = $(this).parent().find("input").eq(1).val();
			
			/* 设置receiverId */
			var receiverId = $(this).parent().find("input").eq(1).val();
			$("#receiverId").val(receiverId);
			
			var dataStr = {"orderId":orderId,"senterId":senterId}
			$.ajax({
				type:"post",
				url:"insertReservation.html",
				data : dataStr,
				dataType : "json",
				success:function(data){
					if(data.status == "SUCCESS"){
						/* 发送留言信息通知对方 */
						$("#sendMessageModal").modal('show');
					}
				},
				error:function(){
					alert("网络出错")
				}
			});
		})
		
		/* 拒绝按钮点击事件 */
		$(document).on("click",".refuseBtn",function(){
			var orderId = $(this).parent().find("input").eq(0).val();
			/* 设置receiverId */
			var receiverId = $(this).parent().find("input").eq(1).val();
			$("#receiverId").val(receiverId);
			
			var dataStr = {"orderId":orderId}
			$.ajax({
				type:"post",
				url:"deleteOrder.html",
				data : dataStr,
				dataType : "json",
				success:function(data){
					if(data.status == "SUCCESS"){
						/* 发送留言信息通知对方 */
						$("#sendMessageModal").modal('show');
					}
				},
				error:function(){
					alert("网络出错")
				}
			});
		})
	})
	
	
</script>

</body>
</html>