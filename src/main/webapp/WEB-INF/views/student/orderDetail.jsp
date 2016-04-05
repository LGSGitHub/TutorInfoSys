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
		
			<div class="col-sm-4 col-sm-offset-1">订单编号：${orderId }1001</div>
			<div class="col-sm-6">
				订单状态：
				<span class="label label-info">${orderStatus }发布中</span>
			</div>
		
			<div class="col-sm-4 col-sm-offset-1">学员名字：${sName }Jack</div>
			<div class="col-sm-6">学员性别：${sSex }男</div>
			
			<div class="col-sm-4 col-sm-offset-1">学员年级：${sGrade }高一</div>
			<div class="col-sm-6">学员年龄：${sAge }15</div>
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
						<td width="80%">英语</td>
					</tr>
					<tr>
						<th class="textLabel">授课区域</th>
						<td>花都</td>
					</tr>
					<tr>
						<th class="textLabel">具体地址</th>
						<td>花都区学府路1号</td>
					</tr>
					<tr>
						<th class="textLabel">学员状况描述</th>
						<td>基础差，恶补英语</td>
					</tr>
					<tr>
						<th class="textLabel">授课时间</th>
						<td>每周六下午1点到3点</td>
					</tr>
					<tr>
						<th class="textLabel">教学方式</th>
						<td>教员上门</td>
					</tr>
					<tr>
						<th class="textLabel">教员性别要求</th>
						<td>女</td>
					</tr>
					<tr>
						<th class="textLabel">教员类型要求</th>
						<td>大学生</td>
					</tr>
					<tr>
						<th class="textLabel">对教员具体要求</th>
						<td>大学生老师都考虑的，有经验的耐心的</td>
					</tr>
					<tr>
						<th class="textLabel">薪酬</th>
						<td>100元/小时</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="btnsDiv">
			<button type="button" class="btn btn-primary">在线预约</button>
			<button type="button" class="btn btn-warning">取消订单</button>
			<button type="button" class="btn btn-success">收藏订单</button>
		</div>
		
	</div>

<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
</body>
</html>