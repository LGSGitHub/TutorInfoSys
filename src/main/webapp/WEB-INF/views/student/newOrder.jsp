<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增订单</title>
<!-- 头部 -->
<jsp:include page="../head.jsp" />

<style type="text/css">
	/* .container{
		background-color:white;
	} */
	#newOrderDiv{
		border:1px solid #bababa;
		margin:8px;
	}
</style>

</head>
<body>

	<div class="container">
	
		<!-- 填写订单标题 -->
		<div class="title">
				<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
				<strong>填写订单信息</strong>
		</div>
		
		<!-- 填写订单详细内容 -->
		<div id="newOrderDiv">
			<form id="newOrderForm" method="post" class="form-horizontal">
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
					
					<!-- 学员年级 -->
					<label class="col-sm-2 control-label">学员年级</label>
					<div class="col-sm-2">
						<select class="form-control" name="sGrade">
							<option value="">-- 请选择 --</option>
							<option value="小学">小学</option>
							<option value="初中">初中</option>
							<option value="高中">高中</option>
							<option value="大学">大学</option>
							<option value="其他">其他</option>
						</select>
					</div>
					
					<!-- 学员年龄 -->
					<label class="col-sm-2 control-label">学员年龄</label>
					<div class="col-sm-2">
						<input name="sAge" type="text" class="form-control" onkeyup="value=value.replace(/[^\d]/g,'')"/>
					</div>
				</div>
				
				<div class="form-group">
					<!-- 辅导科目 -->
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
					
					<!-- 教员性别要求 -->
					<label class="col-sm-2 control-label">教员性别要求</label>
					<div class="col-sm-2">
						<select class="form-control" name="sRequestSex">
							<option value="">-- 请选择 --</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					
					<!-- 教员类型要求 -->
					<label class="col-sm-2 control-label">教员类型要求</label>
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
					
					<label  class="col-sm-1 control-label">薪酬</label>
					<div class="col-sm-2">
						<input name="sPrice" type="text" class="form-control" placeholder="元/小时"/>
					</div>
					
					<label class="col-sm-2 control-label">教学方式</label>
					<div class="col-sm-4 checkbox">
						<label class="checkbox-inline">
							<input name="sTeacherWay" type="checkbox" value="教员上门">教员上门
						</label>
						<label class="checkbox-inline">
							<input name="sTeacherWay" type="checkbox" value="学员上门">学员上门
						</label>
						<label class="checkbox-inline">
							<input name="sTeacherWay" type="checkbox" value="网上辅导">网上辅导
						</label>
					</div>
					
				</div>
				
				<div class="form-group">
					
					<label  class="col-sm-1 control-label">授课区域</label>
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
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">具体地址</label>
					<div class="col-sm-10">
						<input name="sDetailAddress" type="text" class="form-control"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">授课时间</label>
					<div class="col-sm-10">
						<input name="sTime" type="text" class="form-control" placeholder="例如：每周六下午1点到3点，2周每次。"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">对教员具体要求</label>
					<div class="col-sm-10">
						<textarea name="sQualificationRemarks" style="width:100%;height:100px;" ></textarea>
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
	</div>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#newOrderForm").bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	sSex:{
	    		validators:{
	    			notEmpty: {
	                    message: 'The student gender is required and cannot be empty'
	                }
	    		}
	    	},
	    	sGrade:{
	    		validators:{
	    			notEmpty: {
	                    message: 'The student grade is required and cannot be empty'
	                }
	    		}
	    	},
	    	sSubject:{
	    		validators:{
	    			notEmpty: {
	                    message: 'The subject is required and cannot be empty'
	                }
	    		}
	    	},
	    	sPrice:{
	    		validators:{
	    			notEmpty:{
	    				message: 'The pay is required and cannot be empty'
	    			},
	    			regexp: {
	                    regexp: /^[0-9]+$/,
	                    message: 'The pay can only consist of number'
	                }
	    		}
	    	},
	    	sAddress:{
	    		validators:{
	    			notEmpty:{
	    				message: 'The area is required and cannot be empty'
	    			}
	    		}
	    	},
	    	sDetailAddress:{
	    		validators:{
	    			notEmpty:{
	    				message: 'The address is required and cannot be empty'
	    			}
	    		}
	    	}
	    }
	})
	
})
	
</script>
</body>
</html>