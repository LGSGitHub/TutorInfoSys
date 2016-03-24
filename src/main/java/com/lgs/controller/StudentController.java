package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
public class StudentController {
	
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
	 * 检查用户名是否存在，方便注册和登录时候校验
	 * 1、存在返回 true
	 * 2、不存在返回 false
	 * @param request
	 * @return
	 */
	public boolean isNameExist(Student student){
//		String studentName = request.getParameter("studentName");
//		Student student = new Student();
//		student.setStudentName(studentName);
		Student dbStudent = studentService.queryByName(student);
		if(dbStudent == null){
			return false;
		}
		else{
			return true;
		}
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
		boolean valid = isNameExist(student);
		if(valid){
			jo.put("valid", false);
		}
		else{
			jo.put("valid", true);
		}
		pw.write(jo.toString());
		pw.flush();
	}
	
//	/**
//	 * 登录时候检查名字是否存在
//	 * 1、存在，PrintWriter写出{"valid":true}，请输入密码登录
//	 * 2、不存在，PrintWriter写出{"valid":false}，用户名不存在
//	 * @param request
//	 * @param response
//	 * @throws IOException
//	 */
//	@RequestMapping(value = "/stuLoginNameCheck")
//	public void stuLoginNameCheck(HttpServletRequest request,HttpServletResponse response) throws IOException{
//		JSONObject jo = new JSONObject();
//		PrintWriter pw = response.getWriter();
//		boolean valid = isNameExist(request);
//		if(valid){
//			jo.put("valid", true);
//		}
//		else{
//			jo.put("valid", false);
//		}
//		pw.write(jo.toString());
//		pw.flush();
//	}
	
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
}
