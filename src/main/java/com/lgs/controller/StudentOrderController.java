package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.annotation.ModelAndViewResolver;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.StudentOrder;
import com.lgs.service.StudentOrderService;

/**
 * 学员订单管理控制类
 * @author LGS
 *
 */
@Controller
public class StudentOrderController extends BaseController {

	@Autowired
	private StudentOrderService studentOrderService;
	
	
	/**
	 * 跳转到订单详情页面
	 * @return
	 */
	@RequestMapping(value = "/toOrderDetail")
	public ModelAndView toOrderDetail(@ModelAttribute StudentOrder studentOrder ,HttpServletRequest request){
		StudentOrder dbStudentOrder = studentOrderService.queryByOrderId(studentOrder);
		ModelAndView modelAndView = new ModelAndView();
		String role = getRole(request);
		
		if(role != null){
			int userId = getUserId(request);
			/*把当前登录的用户角色和用户ID传到页面，便于判断“取消订单”按钮的隐藏与否*/
			modelAndView.addObject("role", role);
			modelAndView.addObject("userId", userId);
		}
		modelAndView.setViewName("/student/orderDetail");
		modelAndView.addObject("dbStudentOrder", dbStudentOrder);
		
		
		return modelAndView;
	}
	
	/**
	 * 查询所有学员订单
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryAllOrders")
	public void queryAllOrders(HttpServletResponse response) throws IOException{
		List<StudentOrder> stuOrderList = studentOrderService.queryAllOrders();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("listSize", stuOrderList.size());
		jsonObject.put("stuOrderList", stuOrderList);
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 根据学员ID查询学员订单
	 * @param student
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryOrderByStuId")
	public void queryOrderByStuId(@ModelAttribute StudentOrder studentOrder,HttpServletResponse response) throws IOException{
		List<StudentOrder> stuOrderList = studentOrderService.queryByStuId(studentOrder);
		JSONObject jsonObject = new JSONObject();
		if(stuOrderList.size() != 0){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("listSize", stuOrderList.size());
			jsonObject.put("stuOrderList", stuOrderList);
		}
		else{
			jsonObject.put("status", "ERROR");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 条件查询学员订单
	 * @param studentOrder
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryOrderByCondition")
	public void queryOrderByCondition(@ModelAttribute StudentOrder studentOrder,HttpServletResponse response) throws IOException{
		List<StudentOrder> stuOrderList = studentOrderService.queryByCondition(studentOrder);
		JSONObject jsonObject = new JSONObject();
		if(stuOrderList.size() != 0){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("listSize", stuOrderList.size());
			jsonObject.put("stuOrderList", stuOrderList);
		}
		else{
			jsonObject.put("status", "ERROR");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 跳转到新增订单页面
	 * @return
	 */
	@RequestMapping(value = "/toNewOrder")
	public ModelAndView toNewOrder(@ModelAttribute StudentOrder studentOrder){
		ModelAndView modelAndView = new ModelAndView();
		if(studentOrder.getTeacherId() != null){
			modelAndView.addObject("teacherId", studentOrder.getTeacherId());
		}
		modelAndView.setViewName("/student/newOrder");
		return modelAndView;
	}
	
	/**
	 * 插入学员订单
	 * @param studentOrder
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/insertOrder")
	public void insertOrder(@ModelAttribute StudentOrder studentOrder,HttpServletRequest request,HttpServletResponse response) throws IOException{
		int userId = getUserId(request);
		String username = getUserName(request);
		studentOrder.setStudentId(userId);
		studentOrder.setsName(username);
		JSONObject jsonObject = new JSONObject();
		if(studentOrder.getStudentId() != null 
				&& studentOrder.getsName() != null && studentOrder.getsName() !="" 
				&& studentOrder.getsSex() != null &&studentOrder.getsSex() !=""
				&& studentOrder.getsAddress() != null && studentOrder.getsAddress() !=""
				&& studentOrder.getsDetailAddress() != null && studentOrder.getsDetailAddress() !=""
				&& studentOrder.getsPhone() != null && studentOrder.getsPhone() !=""
				&& studentOrder.getsGrade() != null && studentOrder.getsGrade() !=""
				&& studentOrder.getsSubject() != null && studentOrder.getsSubject() !=""){
			boolean isSuccess = studentOrderService.insert(studentOrder);
			
			if(isSuccess){
				jsonObject.put("status", "SUCCESS");
				jsonObject.put("message", "发布成功");
			}
			else{
				jsonObject.put("status", "ERROR");
				jsonObject.put("message", "发布失败");
			}
		}
		else{
			jsonObject.put("status", "FAIL");
			jsonObject.put("message", "发布失败，请正确填写信息");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 根据当前学员用户ID查询其最新插入的订单数据，返回订单ID
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryLatestOrder")
	public void queryLatestOrder(HttpServletRequest request,HttpServletResponse response) throws IOException{
		StudentOrder studentOrder = new StudentOrder();
		studentOrder.setStudentId(getUserId(request));
		StudentOrder dbStudentOrder = studentOrderService.queryLatestOrder(studentOrder);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("orderId", dbStudentOrder.getOrderId());
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 删除订单
	 * @param studentOrder
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/deleteOrder")
	public void deleteOrder(@ModelAttribute StudentOrder studentOrder,HttpServletResponse response) throws IOException{
		boolean isSuccess = studentOrderService.delete(studentOrder);
		JSONObject jsonObject = new JSONObject();
		if(isSuccess){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("message", "删除成功");
		}
		else{
			jsonObject.put("status", "ERROR");
			jsonObject.put("message", "删除错误");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
}
