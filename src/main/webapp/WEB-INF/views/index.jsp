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
<%-- <script src="<%=request.getContextPath() %>/lib/js/index.js"></script> --%>
</head>
<body>

	<% %>

	<div class="container">

		<!-- 头部 -->
		<%-- <jsp:include page="head.jsp" /> --%>

		<!-- 正文部分 -->

		<!-- 教学风采（教员库连接） -->
		<div id="teacherShowTitle" class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>教学风采</strong><a class="more" href="toTeacherLib.html">+更多</a>
		</div>
		<div id="teacherShow">
			
			<div id="carousel">
				<div id="carousel-example-generic" class="carousel slide"
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
							<div class="row">
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=13"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan9_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<!-- <div><a href="#">王教员</a></div>
									<div><a href="#">编号：1001</a></div>
									<div><a href="#">在校大学生</a></div> -->
									<div>
										<a href="toTeacherDetail.html?teacherId=13">
											selly<br/>
											编号：13<br/>
											在校大学生
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=12"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan8_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=12">
											冯教员<br/>
											编号：12<br/>
											在校大学生
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=11"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan7_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=11">
											赵教员<br/>
											编号：11<br/>
											在校大学生
										</a>
									</div>
								</div>
								
							</div>
							<%-- <img src="<%=request.getContextPath() %>/lib/images/jiaoyuan1_1.jpg" class="img-responsive"
								alt="..."> --%>
							<!-- <div class="carousel-caption">图片描述</div> -->
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=10"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan6_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<!-- <div><a href="#">王教员</a></div>
									<div><a href="#">编号：1001</a></div>
									<div><a href="#">在校大学生</a></div> -->
									<div>
										<a href="toTeacherDetail.html?teacherId=10">
											王教员<br/>
											编号：10<br/>
											专业教师
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=9"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan5_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=9">
											李教员<br/>
											编号：9<br/>
											在校大学生
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=8"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan4_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=8">
											sunshine<br/>
											编号：8<br/>
											在校大学生
										</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=7"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan3_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<!-- <div><a href="#">王教员</a></div>
									<div><a href="#">编号：1001</a></div>
									<div><a href="#">在校大学生</a></div> -->
									<div>
										<a href="toTeacherDetail.html?teacherId=7">
											jessica<br/>
											编号：7<br/>
											在校大学生
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=6"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan2_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=6">
											serlinda<br/>
											编号：6<br/>
											专业教师
										</a>
									</div>
								</div>
								<div class="col-sm-4">
									<a href="toTeacherDetail.html?teacherId=5"><img src="<%=request.getContextPath() %>/lib/images/jiaoyuan1_1.jpg" class="img-responsive"
										alt="...">
									</a>
									<div>
										<a href="toTeacherDetail.html?teacherId=5">
											marry<br/>
											编号：5<br/>
											在校大学生
										</a>
									</div>
								</div>
								
							</div>
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
		<div id="studentShowTitle" class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>最新订单</strong><a class="more" href="toStudentLib.html">+更多</a>
		</div>
		<div id="studentShow">
			
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>编号</th>
							<th>科目</th>
							<th>地址</th>
							<th>教员要求</th>
							<th>时间</th>
							<th>详细</th>
						</tr>
					</thead>
					<tbody id="tableTBody">
						<!-- <tr>
							<td>1234</td>
							<td>小提琴</td>
							<td>雅居乐花苑</td>
							<td>要求有教学经验，有耐心，讲解详细</td>
							<td>03-08</td>
							<td><a href="#">click</a></td>
						</tr> -->
					</tbody>
				</table>
			</div>
		</div>

		<!-- 咨询/社区 -->
		<div id="articleShowTitle" class="title">
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
					<div role="tabpanel" class="tab-pane active" id="experience">
					
					<!-- 经验杂谈面板部分 -->
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingOne">
							      <h4 class="panel-title">
							        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							          	教育选择焦虑症, 家长间的残酷竞争: 一位家长曲折的择校道路
							        </a>
							      </h4>
							    </div>
							    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							      <div class="panel-body">
							          	应试的反感，成材的压力，爹妈间的比拼，孩子适应社会的能力……等等，每一项都可能逼迫家长变成为子女的教育无限疯狂和焦虑的蛇精病人！<br/>
									本文叙述者段凌选择让一双儿女辗转于公立、私立、国际学校和公立出国班之间。她经历了对西式教育的期望、现实中的落空、带着孩子逃离公立学校、又发现只能用应试方式应对“洋高考”，最终还是认准西式教育的曲折道路。<br/>
									教育方式的选择没有对错，但是由于孩子的成长是一次性的，家长又难免会产生疑问：如果我给他选择了另一种教育，他会不会更好？家长们在一次次的选择比较中，其实不可避免地将教育越来越变成了家长间的一种竞争。
							      </div>
							    </div>
							  </div>
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingTwo">
							      <h4 class="panel-title">
							        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							         	 培养孩子特长，到底是为了什么？
							        </a>
							      </h4>
							    </div>
							    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							      <div class="panel-body">
							        家长不清楚学习的目的，自己不坚持，怎能要求孩子坚持？<br/>
								对于孩子来说，我们只能看到孩子是否具有某种天赋，而无法看到她有什么特长。我认为孩子的特长都是靠父母培养出来的。没有孩子天生有特长。<br/>
								有些孩子有艺术天分，那是天生的，比如莫扎特，他从小就有音乐天赋，但是他的钢琴特长也是后天父母培养的，他并不是生下来就会弹钢琴。他的天赋因为后天的培养得到了极大的发挥，因此他5岁写的曲子到现在还是所有学钢琴的孩子必须练习的。这样的孩子叫天才，很少有。大部分的孩子都是普通的孩子。那么如果不培养孩子，孩子就没有特长。但是每个孩子都有自己的天赋，这是需要父母去注意发现的。
							      </div>
							    </div>
							  </div>
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingThree">
							      <h4 class="panel-title">
							        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							         	 别急！大数据告诉你，让娃晚一年上学原来有这么多好处
							        </a>
							      </h4>
							    </div>
							    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							      <div class="panel-body">
							       	 晚一年上学，带给孩子哪些方面的优势？<br/>
									1、更容易被老师们喜爱<br/>
									晚一年上学的孩子，由于他们的心智比同班的其他孩子成熟，花不多的时间就能适应学校生活，给老师们减少麻烦。他们在体能和情商方面表现出来比低龄孩子的优势，往往会得到老师更多的青睐，表现在情绪控制、吃饭睡觉是否自律、是否容易跟老师沟通等，都为孩子增分不少。<br/>
									2、更容易成为班里的优秀学生<br/>
									年龄较大的孩子，他们的理解能力、自我约束能力都会比年纪小的孩子好一些。
							      </div>
							    </div>
							  </div>
							</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="tutorNews">
						<div class="row">
							<div class="col-sm-10 tutorNewsLink bg-success">
								<a href="javascript:void(0);">培养孩子的阅读习惯，选对书就成功了一半</a>
							</div>
							<div class="col-sm-10 tutorNewsLink bg-success">
								<a href="javascript:void(0);">不会写简历,就别怪自己找不到工作了</a>
							</div>
							<div class="col-sm-10 tutorNewsLink bg-success">
								<a href="javascript:void(0);">5个角度帮你了解MIT青睐什么学生</a>
							</div>
							<div class="col-sm-10 tutorNewsLink bg-success">
								<a href="javascript:void(0);">上学，在哪都不是件轻松事</a>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="hot">
						<div class="row">
							<div class="col-sm-10 tutorNewsLink">
								<a href="javascript:void(0);">国际高中课程怎么选？</a>
							</div>
							<div class="col-sm-10 tutorNewsLink">
								<a href="javascript:void(0);">为何IB学校那么重视艺术课？</a>
							</div>
							<div class="col-sm-10 tutorNewsLink">
								<a href="javascript:void(0);">让IB、AP学生告诉你，选择国际课程的最大挑战在哪里？</a>
							</div>
						</div>
					</div>
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
			
			$.ajax({
				type:"post",
				dataType :"json",
				url : "queryAllOrders.html",
				success : function(data){
					var listSize = data.listSize;
					/* 只显示5条 */
					if(listSize > 5){
						listSize = 5;
					}
					for(var i=0;i<listSize;i++){
						var str = "<tr>"+
						"<td>"+data.stuOrderList[i].orderId+"</td>"+
						"<td>"+data.stuOrderList[i].sSubject+"</td>"+
						"<td>"+data.stuOrderList[i].sDetailAddress+"</td>"+
						"<td>"+data.stuOrderList[i].sQualificationRemarks+"</td>"+
						"<td>"+data.stuOrderList[i].startDate+"</td>"+
						"<td><a target='_blank' href='toOrderDetail.html?orderId="+data.stuOrderList[i].orderId+"'><input type='button' class='btn btn-info' value='查看详情'/></a></td>"+
						"</tr>"
						$("#tableTBody").append(str);
					}
				},
				error : function(data){
					alert("网络出错")
				}
			})
			
		});
	</script>
</body>

</html>