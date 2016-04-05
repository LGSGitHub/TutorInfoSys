<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学员库</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />
<style type="text/css">
	/* .container{
		background-color:white;
	} */
	
	/* 学员搜索条件div */
	#studentSelectDiv{
		border:1px solid #bababa;
		margin:8px;
	}
	
	/* 提示工具类 */
	.tooltipClass{
		white-space:nowrap;
		text-overflow:ellipsis;
		overflow:hidden;
	}
	
</style>
</head>
<body>
	<div class="container" >
		
		<!-- 搜索标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>搜索条件</strong>
		</div>
		
		<!-- 搜索条件 -->
		<div id="studentSelectDiv">
			<form id="studentSelectForm" method="post" class="form-horizontal">
				<div class="form-group">
				
					<!-- 科目 -->
					<label class="col-sm-1 control-label">辅导科目</label>
					<div class="col-sm-2">
						<select class="form-control" name="sSubject">
							<option value="">-- 请选择 --</option>
							<option value="小学课程">小学课程</option>
							<option value="初中课程">初中课程</option>
							<option value="高中课程">高中课程</option>
							<option value="大学课程">大学课程</option>
							<option value="艺术/乐器">艺术/乐器</option>
							<option value="计算机">计算机</option>
						</select>
					</div>
					
					<!-- 授课区域 -->
					<label class="col-sm-2 control-label">授课区域</label>
					<div class="col-sm-2">
						<select class="form-control" name="sAddress">
							<option value="">-- 请选择 --</option>
							<option value="番禺">番禺</option>
							<option value="天河">天河</option>
							<option value="荔湾">荔湾</option>
							<option value="海珠">海珠</option>
							<option value="花都">花都</option>
							<option value="越秀">越秀</option>
						</select>
					</div>
					
					<!-- 教员类型 -->
					<label class="col-sm-2 control-label">教员类型</label>
					<div class="col-sm-2">
						<select class="form-control" name="sRequestQualification">
							<option value="">-- 请选择 --</option>
							<option value="专业教师">专业教师</option>
							<option value="大学生">大学生</option>
							<option value="其他教员">其他教员</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					
					<!-- 学员性别 -->
					<label class="col-sm-1 control-label">学员性别</label>
					<div class="col-sm-2">
						<select class="form-control" name="sSex">
							<option value="">-- 请选择 --</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					
					<!-- 性别要求 -->
					<label class="col-sm-2 control-label">教员性别要求</label>
					<div class="col-sm-2">
						<select class="form-control" name="sRequestSex">
							<option value="">-- 请选择 --</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-3 col-sm-offset-9">
						<button type="submit" class="btn btn-primary" id="sureBtn">确定</button>
						<button type="reset" class="btn btn-default">重置</button>
					</div>
				</div>
				
			</form>
		</div>
		
		<!-- 搜索结果 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>搜索结果</strong>
		</div>
		
		<!-- 学员订单部分 -->
		<div id="studentOrdersDiv">
			<div class="row afterTitleDiv">
				<div class="col-sm-2 textLabel">学员：</div>
				<div class="col-sm-2">初三[女]</div>
				
				<div class="col-sm-2 textLabel">辅导科目：</div>
				<div class="col-sm-6">小提琴</div>
				
				<!-- <div class="col-sm-3 col-sm-offset-1">
					<p class="label label-success">发布中</p>
				</div> -->
				
				<div class="col-sm-2 textLabel">授课区域：</div>
				<div class="col-sm-2">花都</div>
				
				<div class="col-sm-2 textLabel">性别要求：</div>
				<div class="col-sm-2">女</div>
				
				<div class="col-sm-2 col-sm-offset-2">
					<a href="toOrderDetail.html"><button type="button" class="btn btn-info">查看详情</button></a>
				</div>
				
				<div class="col-sm-2 textLabel">教员资格要求：</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						在校教员,资质好点的大学生，要音乐学院
					</a>
				</div>
				
			</div>
			
			<div class="row afterTitleDiv">
				<div class="col-sm-2 textLabel">学员：</div>
				<div class="col-sm-2">初三[女]</div>
				
				<div class="col-sm-2 textLabel">辅导科目：</div>
				<div class="col-sm-6">小提琴</div>
				
				<!-- <div class="col-sm-3 col-sm-offset-1">
					<p class="label label-success">发布中</p>
				</div> -->
				
				<div class="col-sm-2 textLabel">授课区域：</div>
				<div class="col-sm-2">花都</div>
				
				<div class="col-sm-2 textLabel">性别要求：</div>
				<div class="col-sm-2">女</div>
				
				<div class="col-sm-2 col-sm-offset-2">
					<a href="toOrderDetail.html"><button type="button" class="btn btn-info">查看详情</button></a>
				</div>
				
				<div class="col-sm-2 textLabel">教员资格要求：</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						在校教员,资质好点的大学生，要音乐学院
					</a>
				</div>
				
			</div>
			
			<div class="row afterTitleDiv">
				<div class="col-sm-2 textLabel">学员：</div>
				<div class="col-sm-2">初三[女]</div>
				
				<div class="col-sm-2 textLabel">辅导科目：</div>
				<div class="col-sm-6">小提琴</div>
				
				<!-- <div class="col-sm-3 col-sm-offset-1">
					<p class="label label-success">发布中</p>
				</div> -->
				
				<div class="col-sm-2 textLabel">授课区域：</div>
				<div class="col-sm-2">花都</div>
				
				<div class="col-sm-2 textLabel">性别要求：</div>
				<div class="col-sm-2">女</div>
				
				<div class="col-sm-2 col-sm-offset-2">
					<a href="toOrderDetail.html"><button type="button" class="btn btn-info">查看详情</button></a>
				</div>
				
				<div class="col-sm-2 textLabel">教员资格要求：</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						在校教员,资质好点的大学生，要音乐学院
					</a>
				</div>
				
			</div>
		</div>	<!-- 搜索结果结束 -->
		
		<!-- 分页组件 -->
			<div class="row">
				<div class="col-sm-6 col-sm-offset-4">
				<nav>
				  <ul class="pagination pagination-lg">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="active"><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
				</div>
			</div>	<!-- 分页组件结束 -->
		
	</div>
	
	<script type="text/javascript">
		$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
	</script>
</body>
</html>