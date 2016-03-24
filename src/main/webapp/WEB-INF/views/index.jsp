<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>精英家教</title>

<!-- 头部 -->
<jsp:include page="head.jsp" />

<!-- <link href="<%=request.getContextPath() %>/lib/css/bootstrap.min.css" rel="stylesheet"
	type="text/css"> -->
<link href="<%=request.getContextPath() %>/lib/css/index.css" rel="stylesheet" type="text/css">

<!-- <script src="<%=request.getContextPath() %>/lib/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/lib/js/jquery-2.1.4.min.js"></script> -->
<script src="<%=request.getContextPath() %>/lib/js/index.js"></script>
</head>
<body>

	<% %>

	<div class="container">

		<!-- 头部 -->
		<%-- <jsp:include page="head.jsp" /> --%>

		<!-- 正文部分 -->

		<!-- 教学风采（教员库连接） -->
		<div id="teacherShowTitle">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>教学风采</strong><a class="more" href="#">+更多</a>
		</div>
		<div id="teacherShow">
			
			<div id="carousel">
				<div style="padding:0px 120px;" id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="<%=request.getContextPath() %>/lib/images/xiaodishu.jpg" class="img-responsive"
								alt="..." style="float: left;">
							<div class="carousel-caption">hellohellohellohello</div>
						</div>
						<div class="item">
							<img src="<%=request.getContextPath() %>/lib/images/xiaodishu.jpg" class="img-responsive"
								alt="..." style="float: left;">
							<div class="carousel-caption">world</div>
						</div>
						<div class="item">
							<img src="<%=request.getContextPath() %>/lib/images/xiaodishu.jpg" class="img-responsive"
								alt="..." style="float: left;">
							<div class="carousel-caption">123</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</div>
		</div>

		<!-- 学员库 -->
		<div id="studentShowTitle">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>最新订单</strong><a class="more" href="#">+更多</a>
		</div>
		<div id="studentShow">
			
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td>编号</td>
							<td>科目</td>
							<td>地址</td>
							<td>教员要求</td>
							<td>时间</td>
							<td>详细</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1234</td>
							<td>小提琴</td>
							<td>雅居乐花苑</td>
							<td>要求有教学经验，有耐心，讲解详细</td>
							<td>03-08</td>
							<td><a href="#">click</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<!-- 咨询/社区 -->
		<div id="articleShowTitle">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>咨询/社区</strong><a class="more" href="#">+更多</a>
		</div>
		<div id="articleShow">
			
			<div>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav-pills" role="tablist">
					<li role="presentation" class="active"><a href="#experience"
						aria-controls="experience" role="tab" data-toggle="tab">经验杂谈</a></li>
					<li role="presentation"><a href="#tutorNews"
						aria-controls="tutorNews" role="tab" data-toggle="tab">家教新闻</a></li>
					<li role="presentation"><a href="#hot" aria-controls="hot"
						role="tab" data-toggle="tab">热点关注</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="experience">学员分享学习经验，家长、教员分享教学经验等等</div>
					<div role="tabpanel" class="tab-pane" id="tutorNews">家教取得重大成果</div>
					<div role="tabpanel" class="tab-pane" id="hot">hotdog</div>
				</div>
			</div>
			
		</div>
		
		<!-- 尾部 -->
		<jsp:include page="footer.jsp" />
		
		<!-- 引入登录和注册的模态框 -->
		<%-- <jsp:include page="login.jsp"/>
		<jsp:include page="register.jsp"/> --%>

	</div>

	<script>
		$(function() {
			$('.carousel').carousel({
				interval : 3000
			})
		});
	</script>
</body>

</html>