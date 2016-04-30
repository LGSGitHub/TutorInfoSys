<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约订单</title>
<!-- 头部 -->
<jsp:include page="head.jsp" />
</head>
<body>

	<div class="container">
		<!-- 预约订单标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>预约订单</strong>
		</div>
		<div id="reservationDiv">
			<%-- <div class="panel panel-info">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-1 textLabel">单据编号：</div>
						<div class="col-sm-1">${reservationId }</div>
						<div class="col-sm-1 textLabel">订单编号：</div>
						<div class="col-sm-1">${orderId }</div>
						<div class="col-sm-1 textLabel">教员编号：</div>
						<div class="col-sm-1">${teacherId }</div>
						<div class="col-sm-1 textLabel">学员编号：</div>
						<div class="col-sm-1">${studentId }</div>
						<div class="col-sm-1">
							<input type="button" class="detailBtn" value="查看详情"/>
						</div>
					</div>
				</div>
			</div> --%>
		</div>
	</div>

	<script type="text/javascript">
		$.ajax({
			type : "post",
			url : "queryMyReservation.html",
			dataType : "json",
			success : function(data){
				$("#reservationDiv").html("");
				$.each(data.reservationList,function(){
					var str;
					str = "<div class='panel panel-success'>"+
					"<div class='panel-heading'>"+
					"<div class='row'>"+
					"<div class='col-sm-1 textLabel'>单据编号</div>"+
					"<div class='col-sm-1'>"+this.reservationId+"</div>"+
					"<div class='col-sm-1 textLabel'>订单编号</div>"+
					"<div class='col-sm-1'>"+this.orderId+"</div>"+
					"<div class='col-sm-1 textLabel'>教员编号</div>"+
					"<div class='col-sm-1'>"+this.teacherId+"</div>"+
					"<div class='col-sm-1 textLabel'>学员编号</div>"+
					"<div class='col-sm-1'>"+this.studentId+"</div>"+
					"<div class='col-sm-2'>"+
					"<input type='hidden' value='"+this.reservationId+"'/>"+
					"<input type='button' class='detailBtn btn btn-info' value='查看详情'/>"+
					"</div>"+
					"</div>"+
					"</div>"+
					"</div>"
					$("#reservationDiv").append(str);
				})
			},
			error : function(){
				alert("网络出错")
			}
		})
		/* 查看详情点击事件 */
		$(document).on("click",".detailBtn",function(){
			var reservationId = $(this).parent().find("input").eq(0).val();
			location.href="queryByReservationId.html?reservationId="+reservationId;
		})
	</script>

</body>
</html>