package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.Admin;
import com.lgs.dto.Student;
import com.lgs.dto.Teacher;
import com.lgs.service.AdminService;
import com.lgs.service.StudentService;
import com.lgs.service.TeacherService;

/**
 * 登录控制类
 * @author LGS
 *
 */
@Controller
public class LoginController extends BaseController{
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	TeacherService teacherService;
	
	/**
	 * 调用基类方法进入首页
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/index")
	public ModelAndView toIndex(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		/*取得当前登录的用户名，没登录则返回null*/
		String username = getUserName(request);
		/*取得当前登录的角色，没登录则返回null*/
		String role = getRole(request);
		
		modelAndView.setViewName("/index");
		modelAndView.addObject("username", username);
		modelAndView.addObject("role", role);
        return modelAndView;
    }

	/**
	 * 
	 * 用户登录，分学员、教员和管理员三种角色，写出登录状态给前台：
	 * 1、SUCCESS表示登录成功，设置session中的username为当前用户的名字
	 * 2、ERROR表示密码不正确
	 * 3、FAIL表示用户名不存在
	 * 4、FALSE表示登录信息填写不正确
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value = "/login")
	protected void login(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String role = (String) request.getParameter("role");
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		int roleNum;
		
		JSONObject jsonObject = new JSONObject();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		/*角色是学员，roleNum赋值1，
		 * 角色是教员，roleNum赋值2，
		 * 角色是管理员，roleNum赋值为3，
		 * 方便下面switch语句选择*/
		if(role.equals("student")){
			roleNum = 1;
		}
		else if(role.equals("teacher")){
			roleNum = 2;
		}
		else{
			roleNum = 3;
		}
		
		/*后台验证必输信息不能为空*/
		if(username != null && username != "" && password != null && password !=""){
			
			switch (roleNum) {
			/*学员登录*/
			case 1:{
				Student loginStudent = new Student();
				loginStudent.setStudentName(username);
				loginStudent.setStudentPassword(password);
				
				Student dbStudent = studentService.queryByName(loginStudent);
				if(dbStudent != null){
					if(username.equals(dbStudent.getStudentName()) && password.equals(dbStudent.getStudentPassword())){
						/*把登录成功的学员名字，角色，学员id存放到session中*/
						session.setAttribute("username", username);
						session.setAttribute("role", "student");
						session.setAttribute("userId", dbStudent.getStudentId());
						
						jsonObject.put("status", "SUCCESS");
						jsonObject.put("student", dbStudent);
						jsonObject.put("role", "student");
						System.out.println("返回登录状态和信息："+jsonObject.toJSONString());
					}
					else{
						jsonObject.put("status", "ERROR");
						System.out.println("登录失败，密码错误"+jsonObject.toString());
					}
				}
				else{
					jsonObject.put("status", "FAIL");
					System.out.println("登录失败，用户名不存在");
				}
				break;
			}
			
			/*教员登录*/
			case 2:{
				Teacher loginTeacher = new Teacher();
				loginTeacher.setTeacherName(username);
				loginTeacher.setTeacherPassword(password);
				
				Teacher dbTeacher = teacherService.queryByName(loginTeacher);
				if(dbTeacher != null){
					if(username.equals(dbTeacher.getTeacherName()) && password.equals(dbTeacher.getTeacherPassword())){
						session.setAttribute("username", username);
						session.setAttribute("role", "teacher");
						session.setAttribute("userId", dbTeacher.getTeacherId());
						jsonObject.put("status", "SUCCESS");
						jsonObject.put("teacher", dbTeacher);
						jsonObject.put("role", "teacher");
						System.out.println("返回登录信息状态："+jsonObject.toJSONString());
					}
					else{
						jsonObject.put("status", "ERROR");
						System.out.println("登录失败，密码错误"+jsonObject.toString());
					}
				}
				else{
					jsonObject.put("status", "FAIL");
					System.out.println("登录失败，用户名不存在");
				}
				break;
			}
			
			/*管理员登录*/
			case 3:{
				
				/*声明Admin对象，用于存储页面传来的用户名和密码*/
				Admin loginAdmin = new Admin();
				loginAdmin.setAdminName(username);
				loginAdmin.setAdminPassword(password);
				
				/*根据名字查询数据库，返回Admin对象*/
				Admin dbAdmin = adminService.queryByAdminName(loginAdmin);
				/*如果dbAdmin不为空，证明用户名存在，进行用户名和密码的验证*/
				if(dbAdmin != null){
					if(username.equals(dbAdmin.getAdminName()) && password.equals(dbAdmin.getAdminPassword())){
						
						session.setAttribute("username", username);
						session.setAttribute("role", "admin");
						session.setAttribute("userId", dbAdmin.getAdminId());
						jsonObject.put("status", "SUCCESS");
						jsonObject.put("admin", dbAdmin);
						jsonObject.put("role", "admin");
						System.out.println("返回登录状态："+jsonObject.toJSONString());
					}
					else{
						jsonObject.put("status", "ERROR");
						System.out.println("登录失败，密码错误"+jsonObject.toString());
						
					}
				}
				else{
					jsonObject.put("status", "FAIL");
					System.out.println("登录失败，用户名不存在");
				}
				break;
			}

			default:
				break;
			}
			
		}
		else{
			jsonObject.put("status", "FALSE");
			System.out.println("请正确填写信息，必输信息不能为空！");
		}
		out.write(jsonObject.toString());
		out.flush();
	}
	
	/**
	 * 用户是否登录
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "isLogin")
	public void isLogin(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		String studentName = (String) session.getAttribute("username");
		JSONObject jsonObject = new JSONObject();
		PrintWriter printWriter = response.getWriter();
		if(studentName == null){
			jsonObject.put("status", false);
			jsonObject.put("message", "登录信息失效，请重新登录！");
			System.out.println(jsonObject.toJSONString());
		}
		else{
			jsonObject.put("status", true);
		}
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 用户退出登录
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("username", null);
		System.out.println("退出登录");
		return new ModelAndView("/index");
	}
	
}
