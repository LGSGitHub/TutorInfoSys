package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.Reservation;
import com.lgs.dto.StudentOrder;
import com.lgs.dto.Teacher;
import com.lgs.service.ReservationService;
import com.lgs.service.StudentOrderService;
import com.lgs.service.TeacherService;

/**
 * 预约处理控制类
 * @author LGS
 *
 */
@Controller
public class ReservationController extends BaseController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private StudentOrderService studentOrderService;
	
	@Autowired
	private TeacherService teacherService;
	
	/**
	 * 学员在教员详情页面指定教员预约
	 * 回调数据：
	 * 1、status：FAIL,用户没登录
	 * 2、status：ERROR,登录用户不是学员（只有学员才能预约教员）
	 * 3、status：SUCCESS,将跳转到新增订单页面，传递指定的teacherId
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/studentBookTeacher")
	public void studentBookTeacher(HttpServletRequest request,HttpServletResponse response) throws IOException{
		JSONObject jsonObject = new JSONObject();
		String role = getRole(request);
		if(role == null){
			jsonObject.put("status", "FAIL");
			jsonObject.put("message", "请先登录！");
		}
		else if(role.equals("student")){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("message", "请填写订单");
		}
		else{
			jsonObject.put("status", "ERROR");
			jsonObject.put("message", "不是学员不能预约教员");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 教员在订单详情页面预约订单
	 * 回调数据：
	 * 1、status：FAIL,用户没登录
	 * 2、status：ERROR,登录用户不是教员（只有教员才能预约学员订单）
	 * 3、status：SUCCESS,将发通知给学员
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/teacherBookOrder")
	public void teacherBookOrder(HttpServletRequest request,HttpServletResponse response) throws IOException{
		JSONObject jsonObject = new JSONObject();
		String role = getRole(request);
		if(role == null){
			jsonObject.put("status", "FAIL");
			jsonObject.put("message", "请先登录！");
		}
		else if(role.equals("teacher")){
			jsonObject.put("status", "SUCCESS");
		}
		else{
			jsonObject.put("status", "ERROR");
			jsonObject.put("message", "不是教员不能预约订单");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/*插入处理订单*/
	@RequestMapping(value = "/insertReservation")
	public void insertReservation(@ModelAttribute Reservation reservation ,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String senterId = request.getParameter("senterId");
		String role = getRole(request);
		JSONObject jsonObject = new JSONObject();
		if(role.equals("student")){
			int teacherId = Integer.parseInt(senterId);
			reservation.setTeacherId(teacherId);
			reservation.setStudentId(getUserId(request));
		}
		else if(role.equals("teacher")){
			int studentId = Integer.parseInt(senterId);
			reservation.setStudentId(studentId);
			reservation.setTeacherId(getUserId(request));
		}
		boolean isSuccess = reservationService.insert(reservation);
		if(isSuccess){
			jsonObject.put("status", "SUCCESS");
			
			// 插入处理订单完成之后，把学员订单的状态由“发布中”改为“已关闭”
			StudentOrder studentOrder = new StudentOrder();
			studentOrder.setOrderId(reservation.getOrderId());
			Date endDate = new Date();
			studentOrder.setEndDate(endDate);
			studentOrder.setOrderStatus("已关闭");
			studentOrderService.updateStatusByOrderId(studentOrder);
		}
		else{
			jsonObject.put("status", "ERROR");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/*根据userId查询当前用户的所有预约订单*/
	@RequestMapping(value = "/queryMyReservation")
	public void queryMyReservation(@ModelAttribute Reservation reservation,HttpServletRequest request,HttpServletResponse response) throws IOException{
		int userId = getUserId(request);
		String role = getRole(request);
		if(role.equals("student")){
			reservation.setStudentId(userId);
		}
		else if(role.equals("teacher")){
			reservation.setTeacherId(userId);
		}
		List<Reservation> reservationList = reservationService.queryAllMyReservation(reservation);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("reservationList", reservationList);
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 跳转到预约订单页面
	 * @return
	 */
	@RequestMapping(value = "/toMyReservation")
	public ModelAndView toMyReservation(){
		return new ModelAndView("/myReservation");
	}
	
	/**
	 * 根据reservationID查询预约处理的订单
	 * @param reservation
	 * @return
	 */
	@RequestMapping(value = "/queryByReservationId")
	public ModelAndView queryByReservationId(@ModelAttribute Reservation reservation){
		Reservation dbReservation = reservationService.queryByReservationId(reservation);
		Teacher dbTeacher = new Teacher();
		dbTeacher.setTeacherId(dbReservation.getTeacherId());
		
		StudentOrder dbStudentOrder = new StudentOrder();
		dbStudentOrder.setOrderId(dbReservation.getOrderId());
		
		dbTeacher = teacherService.queryById(dbTeacher);
		dbStudentOrder = studentOrderService.queryByOrderId(dbStudentOrder);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dbTeacher", dbTeacher);
		modelAndView.addObject("dbStudentOrder", dbStudentOrder);
		System.out.println("dingdanneirong"+dbStudentOrder.getsAddress());
		modelAndView.setViewName("/reservationDetail");
		return modelAndView;
	}
}
