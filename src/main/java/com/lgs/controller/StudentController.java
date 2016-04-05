package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.Student;
import com.lgs.service.StudentService;

/**
 * 
 * 学员控制类
 * @author LGS
 *
 */
@Controller
public class StudentController extends BaseController{
	
	@Autowired
	StudentService studentService;
	
	/**
	 * 学员注册
	 * @param student
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/stuRegister")
	public void stuRegister(@ModelAttribute Student student,HttpServletResponse response) throws IOException{
		PrintWriter pw = response.getWriter();
		JSONObject jo = new JSONObject();
		if(student.getStudentName() != null && student.getStudentName() !="" 
				&& student.getStudentPassword() != null && student.getStudentPassword() !=""
				&& student.getStudentPhone() != null && student.getStudentPhone() !=""){
			/*执行数据插入*/
			studentService.insert(student);
			jo.put("status", "SUCCESS");
		}
		else{
			System.out.println("------studentName,studentPassword,studentPhone不能为空------");
			jo.put("status", "FAIL");
			jo.put("message", "studentName,studentPassword,studentPhone不能为空");
		}
		pw.write(jo.toString());
		pw.flush();
	}
	
	
	/**
	 * 注册时候检查学员名字是否存在（可用）：
	 * 1、存在，PrintWriter写出{"valid":false}，名字已被注册
	 * 2、不存在，PrintWriter写出{"valid":true}，名字可以注册
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/stuRegisterNameCheck")
	public void stuRegisterNameCheck(@ModelAttribute Student student,HttpServletResponse response) throws IOException{
		
		JSONObject jo = new JSONObject();
		PrintWriter pw = response.getWriter();
		Student dbStudent = studentService.queryByName(student);
//		boolean valid = isNameExist(student);
		if(dbStudent != null){
			jo.put("valid", false);
		}
		else{
			jo.put("valid", true);
		}
		pw.write(jo.toString());
		pw.flush();
	}
	
	
	/**
	 * 
	 * 注册时候检查手机号是否存在
	 * 1、存在，printWriter写出{"valid":false}，手机号已被注册
	 * 2、不存在，printWriter写出{"valid":true}，手机号可以注册
	 * @param student
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "stuRegisterPhoneCheck")
	public void stuRegisterPhoneCheck(@ModelAttribute Student student,HttpServletResponse response) throws IOException{
		
		Student dbStudent = studentService.queryByPhone(student);
		JSONObject jsonObject = new JSONObject();
		PrintWriter printWriter = response.getWriter();
		if(dbStudent != null){
			
			jsonObject.put("valid", false);
		}
		else{
			jsonObject.put("valid", true);
		}
		printWriter.write(jsonObject.toString());
		printWriter.flush();
	}
	
	/**
	 * 跳转到学员库
	 * @return
	 */
	@RequestMapping(value = "/toStudentLib")
	public ModelAndView toStudentLib(){
		return new ModelAndView("/student/studentLib");
	}
	
	/**
	 * 跳转到订单详情页面
	 * @return
	 */
	@RequestMapping(value = "/toOrderDetail")
	public ModelAndView toOrderDetail(){
		return new ModelAndView("/student/orderDetail");
	}
	
	/**
	 * 跳转到新增订单页面
	 * @return
	 */
	@RequestMapping(value = "/toNewOrder")
	public ModelAndView toNewOrder(){
		return new ModelAndView("/student/newOrder");
	}
	
	/**
	 * 跳转到学员个人信息更新页面
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value = "/toStudentInfoUpdate")
	public ModelAndView toStudentInfoUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		Student student = new Student();
		student.setStudentName(username);
		Student dbStudent = studentService.queryByName(student);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/studentInfoUpdate");
		modelAndView.addObject("dbStudent",dbStudent);
		return modelAndView;
	}
	
	
	/**
	 * 执行学员个人信息更新操作
	 * 1、更新成功返回{"status","SUCCESS"}
	 * 2、原密码错误返回{"status","ERROR"}
	 * @param student
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/doStudentInfoUpdate")
	public void doStudengInfoUpdate(@ModelAttribute Student student,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String formerPassword = request.getParameter("formerPassword");
		Student dbStudent = studentService.queryById(student);
		HttpSession session = request.getSession();
		JSONObject jsonObject = new JSONObject();
		if(formerPassword.equals(dbStudent.getStudentPassword())){
			studentService.update(student);
			jsonObject.put("status", "SUCCESS");
			session.setAttribute("username", student.getStudentName());
		}
		else{
			jsonObject.put("status", "ERROR");
			jsonObject.put("message", "原密码错误！");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
}
