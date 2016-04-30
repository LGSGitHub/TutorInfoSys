<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.lgs.dto.Teacher"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<option value="小学">小学课程</option>
							<option value="初中">初中课程</option>
							<option value="高中">高中课程</option>
							<option value="大学">大学课程</option>
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
						<button type="button" class="btn btn-primary" id="sureBtn">确定</button>
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
			<div>
				<!-- 取得的数据list -->
				<input type="hidden" id="teaListData" value="${teaList}"/>
				<!-- list的长度 -->
				<input type="hidden" id="teaListSize" value="${teaList.size() }"/>
				<!-- 分页时每页显示数据的数量  ,默认是每页10条-->
				<input type="hidden" id="everyPageCount" value="3"/>
				<!-- 页数 -->
				<input type="hidden" id="pageCount"/>
				
			</div>
			
			<div id="teaListDiv">
			</div>
			
		</div>	<!-- 搜索结果结束 -->
		
		<!-- 分页组件 -->
			<div id="paginationDiv" class="row">
				<div class="col-sm-6 col-sm-offset-4">
				<nav>
				  <ul id="paginationUl" class="pagination pagination-lg">
				    <li>
				      <a href="javascript:void(0);" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="active"><a href="javascript:void(0);">1</a></li>
				    <li><a href="javascript:void(0);">2</a></li>
				    <li><a href="javascript:void(0);">3</a></li>
				    <li><a href="javascript:void(0);">4</a></li>
				    <li><a href="javascript:void(0);">5</a></li>
					<li>
				      <a href="javascript:void(0);" aria-label="Next">
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
			var teaListData; // 存储teacher集合
			var teaListSize; // 存储集合长度
			
			/* bootstrap提示工具激活 */
			$('[data-toggle="tooltip"]').tooltip();
			
			/* bootstrap表单验证 */
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
		  
		  /* 加载页面完毕之后查询所有教员数据 */
		  $.ajax({
			  type : "post",
			  dataType : "json",
			  url : "queryTeachers.html",
			  success : function(data){
				  $("#teaListSize").val(data.listSize);
				  $("#teaListData").val(data.teaList);
				  teaListData = data.teaList;
				  teaListSize = data.listSize;
				  /* 调用显示方法 */
				  showData(teaListData,teaListSize,0,teaListSize);
			  },
			  error : function(data){
				  alert("网络出错")
			  }
		  })
		  
		  /* 执行分页方法 */
		  /* setPage(); */
		  
		  /* 条件查询“确定”按钮点击事件 */
		  $("#sureBtn").click(function(){
			  var jsonData = $("#teacherSelectForm").serialize();
			  $.ajax({
				  type : "post",
				  data : jsonData,
				  url : "queryByCondition.html",
				  dataType : "json",
				  success : function(data){
					  if(data.status == "ERROR"){
						  $("#teaListDiv").html("");
						  alert("无结果")
					  }
					  else{
						  teaListData = data.teaList;
						  teaListSize = data.listSize;
						  showData(teaListData,teaListSize,0,teaListSize);
					  }
				  },
				  error : function(data){
					  alert("网络出错！")
				  }
			  })
		  })
			
		});
		
		
		/* 设置分页组件 */
		function setPage(){
			var pageCount = Math.ceil($("#teaListSize").val() / $("#everyPageCount").val());
			if(pageCount > 1){
				$("#paginationDiv").show();
				for(var i=1;i<=pageCount;i++){
					$("#paginationUl").append("<li class='pageLi'><a href='javascript:void(0);'>"
						+i
						+"</a>"
						+"<input type='hidden' value='"+ i +"'/></li>");
				}
				/* 第一页默认选中 */
				var firstPage = $(".pageLi").find("input").eq(0);
				if(firstPage.val() == 1){
					firstPage.parent().attr("class","pageLi active");
				}
			}
			/* 分页按钮点击事件 */
			$(".pageLi").click(function(){
				var pageNum = $(this).find("input").eq(0).val();
				var everyPage = $("#everyPageCount").val();
				var begin = everyPage*pageNum-everyPage;
				var end = everyPage*pageNum-1;
				$(".pageLi").attr("class","pageLi");
				$(this).attr("class","active pageLi");
				
			})
		}
		
		/* 根据分页设置显示数据 */
		function showData(teaListData,listSize,begin,end){
			if(end> listSize-1){
				end = listSize-1;
			}
			$("#teaListDiv").html("");
			for(;begin<=end;begin++){
				var str = "<div class='row afterTitleDiv'>"+
				"<div class='col-sm-2'>"+
				"<img alt='' src='"+teaListData[begin].url+"'>"+
				"</div>"+
				"<div class='col-sm-10'>"+
				"<div class='row'>"+
				"<div class='col-sm-2'>"+teaListData[begin].teacherName+"</div>"+
				"<div class='col-sm-2'>"+teaListData[begin].teacherGender+"</div>"+
				"<div class='col-sm-4'>"+teaListData[begin].teacherNowIdentity+"</div>"+
				"<div class='col-sm-10'>编号："+teaListData[begin].teacherId+"</div>"+
				"<div class='col-sm-2'>"+
				"<a target='_blank' href='toTeacherDetail.html?teacherId="+teaListData[begin].teacherId+"'><button type='button' class='btn btn-info'>查看详情</button></a>"+
				"</div>"+
				"<div class='col-sm-10'>就读/毕业院校："+teaListData[begin].teacherSchool+"</div>"+
				"</div>"+
				"</div>"+
				"<div class='col-sm-10 tooltipClass' data-toggle='tooltip' data-placement='bottom' title='"+teaListData[begin].teacherSubject+"'>"+
				"<a href='javascript:void(0);'>"+
				"授课科目："+teaListData[begin].teacherSubject+
				"</a>"+
				"</div>"+
				"<div class='tooltipClass col-sm-10 col-sm-offset-2' data-toggle='tooltip' data-placement='bottom' title='"+teaListData[begin].teacherShow+"'>"+
				"<a href='javascript:void(0);'>"+
				"自我介绍："+teaListData[begin].teacherShow+
				"</a>"+
				"</div>"+
				"</div>"
				$("#teaListDiv").append(str);
			}
			$('[data-toggle="tooltip"]').tooltip();
		}
	</script>
	
</body>
</html>