<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约订单详情</title>
<!-- 头部 -->
<jsp:include page="head.jsp" />
</head>
<body>
	<div class="container">
		<!-- 个人信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>学员信息</strong>
		</div>
		
		<div class="row afterTitleDiv" id="studentInfo">
		
			<input type="hidden" id="studentId" value="${dbStudentOrder.studentId }"/>
			<input type="hidden" id="orderId" value="${dbStudentOrder.orderId }" />
		
			<div class="col-sm-4 col-sm-offset-1">订单编号：${dbStudentOrder.orderId }</div>
			<div class="col-sm-6">
				订单状态：
				<span class="label label-info">${dbStudentOrder.orderStatus }</span>
			</div>
			<div class="col-sm-4 col-sm-offset-1">学员编号：${dbStudentOrder.studentId }</div>
			<div class="col-sm-6">联系电话：${dbStudentOrder.sPhone }</div>
		
			<div class="col-sm-4 col-sm-offset-1">学员名字：${dbStudentOrder.sName }</div>
			<div class="col-sm-6">学员性别：${dbStudentOrder.sSex }</div>
			
			<div class="col-sm-4 col-sm-offset-1">学员年级：${dbStudentOrder.sGrade }</div>
			<div class="col-sm-6">学员年龄：${dbStudentOrder.sAge }</div>
		</div>
		
		<!-- 教员信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>教员信息</strong>
		</div>
		
		<div class="row afterTitleDiv">
			<div class="col-sm-2 textLabel">教员编号：</div>
			<div class="col-sm-3">${dbTeacher.teacherId }</div>
			<div class="col-sm-2 textLabel">教员名字：</div>
			<div class="col-sm-5">${dbTeacher.teacherName }</div>
		
			<div class="col-sm-2 textLabel">教员性别：</div>
			<div class="col-sm-3">${dbTeacher.teacherGender }</div>
			<div class="col-sm-2 textLabel">联系电话：</div>
			<div class="col-sm-5">${dbTeacher.teacherPhone }</div>
			
			<div class="col-sm-2 textLabel">就读/毕业院校：</div>
			<div class="col-sm-3">${dbTeacher.teacherSchool }</div>
			<div class="col-sm-2 textLabel">主修专业：</div>
			<div class="col-sm-5">${dbTeacher.teacherMajor }</div>
			
			<div class="col-sm-2 textLabel">政治面貌：</div>
			<div class="col-sm-3">${dbTeacher.teacherPolitical }</div>
			<div class="col-sm-2 textLabel">目前身份：</div>
			<div class="col-sm-5">${dbTeacher.teacherNowIdentity }</div>
			
		</div>
		
		<!-- 订单信息标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>辅导信息</strong>
		</div>
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
		<div>
			<input id="printer" type="button" class="btn btn-primary" value="打印订单"/>
			<input id="printer" type="button" class="btn btn-success" value="保存为PDF格式"/>
		</div>
	</div>
</body>
</html>