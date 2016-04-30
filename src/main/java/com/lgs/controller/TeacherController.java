package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
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
public class TeacherController extends BaseController{
	
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
	 * 跳转到教员库页面
	 * @return
	 */
	@RequestMapping(value = "/toTeacherLib")
	public ModelAndView toTeacherLib(){
//		List<Teacher> teaList = teacherService.queryAllTeachers();
//		
//		JSONArray jsonArray = new JSONArray();
//		jsonArray.addAll(teaList);
		
		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.addObject("teaList", teaList);
//		modelAndView.addObject("jsonArray", jsonArray);
		modelAndView.setViewName("/teacher/teacherLib");
		return modelAndView;
	}
	
	/**
	 * 查询全部，返回所有teacher数据
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryTeachers")
	public void queryTeachers(HttpServletResponse response) throws IOException{
		List<Teacher> teaList = new ArrayList<>();
		teaList = teacherService.queryAllTeachers();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("listSize", teaList.size());
		jsonObject.put("teaList", teaList);
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 条件查询，返回list，如果查询没结果，返回ERROR状态
	 * @param teacher
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryByCondition")
	public void queryByCondition(@ModelAttribute Teacher teacher ,HttpServletResponse response) throws IOException{
		List<Teacher> teaList = teacherService.queryByCondition(teacher);
		JSONObject jsonObject = new JSONObject();
		if(teaList.size() != 0){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("listSize", teaList.size());
			jsonObject.put("teaList", teaList);
		}
		else{
			jsonObject.put("status", "ERROR");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 跳转到教员详情
	 * @return
	 */
	@RequestMapping(value = "/toTeacherDetail")
	public ModelAndView toTeacherDetail(@ModelAttribute Teacher teacher,HttpServletRequest request){
		Teacher dbTeacher = teacherService.queryById(teacher);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dbTeacher", dbTeacher);
		modelAndView.setViewName("/teacher/teacherDetail");
		return modelAndView;
	}
	
	/**
	 * 跳转到教员个人信息更改页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/toTeacherInfoUpdate")
	public ModelAndView toTeacherInfoUpdate(HttpServletRequest request){
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		Teacher teacher = new Teacher();
		teacher.setTeacherName(username);
		Teacher dbTeacher = teacherService.queryByName(teacher);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/teacher/teacherInfoUpdate");
		modelAndView.addObject("dbTeacher", dbTeacher);
		return  modelAndView;
	}
	
	/**
	 * 执行教员个人信息更新操作
	 * 1、更新成功返回{"status","SUCCESS"}
	 * 2、原密码错误返回{"status","ERROR"}
	 * @param teacher
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/doTeacherInfoUpdate")
	public void doTeacherInfoUpdate(@ModelAttribute Teacher teacher,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String formerPassword = request.getParameter("formerPassword");
		Teacher dbTeacher = teacherService.queryById(teacher);
		System.out.println(dbTeacher.getTeacherBirthday()+"chushengqiri");
		HttpSession session = request.getSession();
		JSONObject jsonObject = new JSONObject();
		if(formerPassword.equals(dbTeacher.getTeacherPassword())){
			teacherService.update(teacher);
			jsonObject.put("status", "SUCCESS");
			session.setAttribute("username", teacher.getTeacherName());
		}
		else{
			jsonObject.put("status", "ERROR");
			jsonObject.put("message", "原密码错误！");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
//	@RequestMapping(value = "/setPageBeginAndEnd")
//	public void setPageBegin(HttpServletRequest request,HttpServletResponse response) throws IOException{
//		HttpSession session = request.getSession();
//		session.setAttribute("pageBegin", request.getParameter("pageBegin"));
//		session.setAttribute("pageEnd", request.getParameter("pageEnd"));
//		System.out.println("开始"+session.getAttribute("pageBegin")+"结束"+session.getAttribute("pageEnd"));
//		JSONObject jsonObject = new JSONObject();
//		jsonObject.put("pageBegin", session.getAttribute("pageBegin"));
//		jsonObject.put("pageEnd", session.getAttribute("pageEnd"));
//		PrintWriter printWriter = response.getWriter();
//		printWriter.write(jsonObject.toJSONString());
//		printWriter.flush();
//	}

}
