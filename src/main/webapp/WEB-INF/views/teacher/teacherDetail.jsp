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
		margin:0px auto;
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
			<div class="col-sm-2 textLabel">教员编号：${teacherId }</div>
			<div class="col-sm-2">1001</div>
			<div class="col-sm-2 textLabel">教员名字：${teacherName }</div>
			<div class="col-sm-5">李教员</div>
		
			<div class="col-sm-2 textLabel">教员性别：${teacherGender }</div>
			<div class="col-sm-2">女</div>
			<div class="col-sm-2 textLabel">出生日期：${teacherBirthday }</div>
			<div class="col-sm-5">1995-09-24</div>
			
			<div class="col-sm-2 textLabel">就读/毕业院校：${teacherSchool }</div>
			<div class="col-sm-2">华南理工大学</div>
			<div class="col-sm-2 textLabel">主修专业：${teacherMajor }</div>
			<div class="col-sm-5">软件工程</div>
			
			<div class="col-sm-2 textLabel">政治面貌：${teacherPolitical }</div>
			<div class="col-sm-2">共青团员</div>
			<div class="col-sm-2 textLabel">目前身份：${teacherNowIdentity }</div>
			<div class="col-sm-5">大二学生</div>
			
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
						<td width="80%">小学语文，小学数学，初中语文，初中数学，初中英语，高中语文，高中数学，高中英语，高中历史，高中政治</td>
					</tr>
					<tr>
						<th class="textLabel">授课区域</th>
						<td>花都,越秀,海珠,天河,白云,黄埔</td>
					</tr>
					<tr>
						<th class="textLabel">家教经验</th>
						<td>2年</td>
					</tr>
					<tr>
						<th class="textLabel">薪酬要求</th>
						<td>80元/小时</td>
					</tr>
					<tr>
						<th class="textLabel">教学方式</th>
						<td>教员上门</td>
					</tr>
					<tr>
						<th class="textLabel">自我描述</th>
						<td>本人在教育机构担任近三年的外教助教，英语发音标准，沟通流利。加上多次参加支教义教活动，有4个孩子的家教经验，本人在教学方面积累了一定的经验。通过商务英语（BEC)中级考试，托福考试98分，英语四六级高分通过。擅长英语口语教学，觉得能够激发学生的自主学习才是教学真正的意义。</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="btnsDiv">
			<button type="button" class="btn btn-primary">在线预约</button>
			<button type="button" class="btn btn-success">收藏教员</button>
		</div>
	</div>

<script type="text/javascript">
	
</script>
</body>
</html>