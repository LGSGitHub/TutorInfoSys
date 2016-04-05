package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.Teacher;
import com.lgs.service.TeacherService;

/**
 * 
 * 教员控制类
 * @author LGS
 *
 */
@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	/**
	 * 注册是检查用户名是否存在
	 * 1、存在，PrintWriter写出{"valid":false}，名字已被注册
	 * 2、不存在，PrintWriter写出{"valid":true}，名字可以注册
	 * @param teacher
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/teaRegisterNameCheck")
	public void teaRegisterNameCheck(@ModelAttribute Teacher teacher,HttpServletResponse response) throws IOException{
		Teacher dbTeacher = teacherService.queryByName(teacher);
		JSONObject jsonObject = new JSONObject();
		PrintWriter printWriter = response.getWriter();
		if(dbTeacher != null){
			jsonObject.put("valid", false);
		}
		else{
			jsonObject.put("valid", true);
		}
		printWriter.write(jsonObject.toString());
		printWriter.flush();
	}
	
	/**
	 * 注册是检查手机号是否存在
	 * 1、存在，PrintWriter写出{"valid":false}，手机号已被注册
	 * 2、不存在，PrintWriter写出{"valid":true}，手机号可以注册
	 * @param teacher
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/teaRegisterPhoneCheck")
	public void teaRegisterPhoneCheck(@ModelAttribute Teacher teacher,HttpServletResponse response) throws IOException{
		Teacher dbTeacher = teacherService.queryByPhone(teacher);
		JSONObject jsonObject = new JSONObject();
		PrintWriter printWriter = response.getWriter();
		if(dbTeacher != null){
			jsonObject.put("valid", false);
		}
		else{
			jsonObject.put("valid", true);
		}
		printWriter.write(jsonObject.toString());
		printWriter.flush();
	}
	
	/**
	 * 教员注册
	 * @param teacher
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/teaRegister")
	public void teaRegister(@ModelAttribute Teacher teacher,HttpServletResponse response) throws IOException{
		JSONObject jsonObject = new JSONObject();
		PrintWriter printWriter = response.getWriter();
		if(teacher.getTeacherName() != null && teacher.getTeacherName()!=""
				&& teacher.getTeacherPassword() != null && teacher.getTeacherPassword() !=""
				&& teacher.getTeacherPhone() != null && teacher.getTeacherPhone() !=""
				&& teacher.getTeacherGender() != null && teacher.getTeacherGender() !=""){
			teacherService.insert(teacher);
			jsonObject.put("status", "SUCCESS");
		}
		else{
			jsonObject.put("status", "FAIL");
			jsonObject.put("message", "teacherName,teacherPassword,teacherPhone不能为空");
		}
		printWriter.write(jsonObject.toString());
		printWriter.flush();
	}
	
	/**
	 * 跳转到教员库
	 * @return
	 */
	@RequestMapping(value = "/toTeacherLib")
	public ModelAndView toTeacherLib(){
		return new ModelAndView("/teacher/teacherLib");
	}
	
	/**
	 * 跳转到教员详情
	 * @return
	 */
	@RequestMapping(value = "/toTeacherDetail")
	public ModelAndView toTeacherDetail(){
		return new ModelAndView("/teacher/teacherDetail");
	}

}
