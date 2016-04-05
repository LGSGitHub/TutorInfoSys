<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教员库</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />

<style type="text/css">
	/* .container{
		background-color:white;
	} */
	/* 教员搜索条件div */
	#teacherSelectDiv{
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
		<div id="teacherSelectDiv">
			<form id="teacherSelectForm" method="post" class="form-horizontal">
				<div class="form-group">
				
					<!-- 科目 -->
					<label class="col-sm-1 control-label">辅导科目</label>
					<div class="col-sm-2">
						<select class="form-control" name="teacherSubject">
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
						<select class="form-control" name="teachPlace">
							<option value="">-- 请选择 --</option>
							<option value="番禺">番禺</option>
							<option value="天河">天河</option>
							<option value="荔湾">荔湾</option>
							<option value="海珠">海珠</option>
							<option value="花都">花都</option>
							<option value="越秀">越秀</option>
						</select>
					</div>
					
					<!-- 高校 -->
					<label class="col-sm-2 control-label">院校要求</label>
					<div class="col-sm-2">
						<select class="form-control" name="teacherSchool">
							<option value="">-- 请选择 --</option>
							<option value="华南理工大学">华南理工大学</option>
							<option value="华南师范大学">华南师范大学</option>
							<option value="华南农业大学">华南农业大学</option>
							<option value="广东工业大学">广东工业大学</option>
							<option value="广东外语外贸大学">广东外语外贸大学</option>
							<option value="暨南大学">暨南大学</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
				
					<!-- 教员类型 -->
					<label class="col-sm-1 control-label">教员类型</label>
					<div class="col-sm-2">
						<select class="form-control" name="teacherType">
							<option value="">-- 请选择 --</option>
							<option value="专业教师">专业教师</option>
							<option value="大学生">大学生</option>
							<option value="其他教员">其他教员</option>
						</select>
					</div>
					
					<label class="col-sm-2 control-label">教员性别</label>
					<div class="col-sm-2">
						<select class="form-control" name="teacherGender">
							<option value="">-- 请选择 --</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					
					<label class="col-sm-2 control-label">教员编号</label>
					<div class="col-sm-2">
						<input id="teacherId" type="text" class="form-control" name="teacherId" onkeyup="value=value.replace(/[^\d]/g,'')"/>
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
		
		<div id="searchResult">
			<!-- <table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>教员编号</th>
						<th>授课科目</th>
						<th>授课科目</th>
						<th>授课区域</th>
						<th>授课科目</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table> -->
			
			<!-- 教员列表部分 -->
			<div class="row afterTitleDiv">
				<div class="col-sm-2">
					<img alt="" src="<%=request.getContextPath()%>/lib/images/jiaoyuan1_1.jpg">
				</div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-2">教员1</div>
						<div class="col-sm-2">女</div>
						<div class="col-sm-2">在校大学生</div>
						<div class="col-sm-10">编号：1001</div>
						<div class="col-sm-2">
							<!-- <a href="#">查看详情</a> -->
							<a href="toTeacherDetail.html"><button type="button" class="btn btn-info">查看详情</button></a>
						</div>
						<div class="col-sm-10">就读/毕业院校：华南理工大学</div>
					</div>
				</div>
				<div class="col-sm-10 tooltipClass" tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						授课科目：小学语文，小学数学，初中语文，初中数学，初中英语，高中语文，高中数学，高中英语，高中历史，高中政治
					</a>
				</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						自我介绍：不管是小学初中还是高中，自己成绩一直位于班里前茅，各科成绩均不错，特别是对于化学还有数学一直有很强烈的热爱和优秀的成绩，曾经取得省里化学竞赛二等奖，高考和高中阶段一直做的是全国卷，对高考题型了解，能抓住重点，初中知识除了语文差不多每科都满分，自己曾经也带过初中数学化学家教，还有高三全科，相信对于自己新的学生，也有能力或者尽力把他带好，对他负责
					</a>
				</div>
			</div>
			
			<div class="row afterTitleDiv">
				<div class="col-sm-2">
					<img alt="" src="<%=request.getContextPath()%>/lib/images/jiaoyuan2_1.jpg">
				</div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-2">教员2</div>
						<div class="col-sm-2">女</div>
						<div class="col-sm-2">在校大学生</div>
						<div class="col-sm-10">编号：1002</div>
						<div class="col-sm-2">
							<a href="#"><button type="button" class="btn btn-info">查看详情</button></a>
						</div>
						<div class="col-sm-10">就读/毕业院校：华南理工大学</div>
					</div>
				</div>
				<div class="col-sm-10 tooltipClass" tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						授课科目：小学语文，小学数学，初中语文，初中数学，初中英语，高中语文，高中数学，高中英语，高中历史，高中政治
					</a>
				</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						自我介绍：不管是小学初中还是高中，自己成绩一直位于班里前茅，各科成绩均不错，特别是对于化学还有数学一直有很强烈的热爱和优秀的成绩，曾经取得省里化学竞赛二等奖，高考和高中阶段一直做的是全国卷，对高考题型了解，能抓住重点，初中知识除了语文差不多每科都满分，自己曾经也带过初中数学化学家教，还有高三全科，相信对于自己新的学生，也有能力或者尽力把他带好，对他负责
					</a>
				</div>
			</div>
			
			<div class="row afterTitleDiv">
				<div class="col-sm-2">
					<img alt="" src="<%=request.getContextPath()%>/lib/images/jiaoyuan3_1.jpg">
				</div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-2">教员3</div>
						<div class="col-sm-2">女</div>
						<div class="col-sm-2">在校大学生</div>
						<div class="col-sm-10">编号：1003</div>
						<div class="col-sm-2">
							<a href="#"><button type="button" class="btn btn-info">查看详情</button></a>
						</div>
						<div class="col-sm-10">就读/毕业院校：华南理工大学</div>
					</div>
				</div>
				<div class="col-sm-10 tooltipClass" tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						授课科目：小学语文，小学数学，初中语文，初中数学，初中英语，高中语文，高中数学，高中英语，高中历史，高中政治
					</a>
				</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						自我介绍：不管是小学初中还是高中，自己成绩一直位于班里前茅，各科成绩均不错，特别是对于化学还有数学一直有很强烈的热爱和优秀的成绩，曾经取得省里化学竞赛二等奖，高考和高中阶段一直做的是全国卷，对高考题型了解，能抓住重点，初中知识除了语文差不多每科都满分，自己曾经也带过初中数学化学家教，还有高三全科，相信对于自己新的学生，也有能力或者尽力把他带好，对他负责
					</a>
				</div>
			</div>
			
			<div class="row afterTitleDiv">
				<div class="col-sm-2">
					<img alt="" src="<%=request.getContextPath()%>/lib/images/jiaoyuan4_1.jpg">
				</div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-2">教员4</div>
						<div class="col-sm-2">女</div>
						<div class="col-sm-2">在校大学生</div>
						<div class="col-sm-10">编号：1004</div>
						<div class="col-sm-2">
							<a href="#"><button type="button" class="btn btn-info">查看详情</button></a>
						</div>
						<div class="col-sm-10">就读/毕业院校：华南理工大学</div>
					</div>
				</div>
				<div class="col-sm-10 tooltipClass" tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						授课科目：小学语文，小学数学，初中语文，初中数学，初中英语，高中语文，高中数学，高中英语，高中历史，高中政治
					</a>
				</div>
				<div class="col-sm-10 tooltipClass" data-toggle="tooltip" data-placement="bottom" title="要提示的内容">
					<a href="#">
						自我介绍：不管是小学初中还是高中，自己成绩一直位于班里前茅，各科成绩均不错，特别是对于化学还有数学一直有很强烈的热爱和优秀的成绩，曾经取得省里化学竞赛二等奖，高考和高中阶段一直做的是全国卷，对高考题型了解，能抓住重点，初中知识除了语文差不多每科都满分，自己曾经也带过初中数学化学家教，还有高三全科，相信对于自己新的学生，也有能力或者尽力把他带好，对他负责
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
		
	</div>	<!-- container -->
	
	<script type="text/javascript">
		$(function () {
		  $('[data-toggle="tooltip"]').tooltip();
		  
		  $("#teacherSelectForm").bootstrapValidator({
			  message: 'This value is not valid',
				feedbackIcons: {
			        valid: 'glyphicon glyphicon-ok',
			        invalid: 'glyphicon glyphicon-remove',
			        validating: 'glyphicon glyphicon-refresh'
			    },
			    fields:{
			    	teacherId:{
			    		validators:{
			    			regexp: {
			                    regexp: /^[0-9]+$/,
			                    message: 'The teacher number can only consist of number'
			                }
			    		}
			    	}
			    }
		  })
		})
	</script>
	
</body>
</html>