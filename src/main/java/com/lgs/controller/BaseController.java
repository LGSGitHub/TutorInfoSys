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
import com.lgs.service.AdminService;

/**
 * 控制器基类
 * @author LGS
 * 2016年3月10日
 *
 */

@Controller
public class BaseController {
	
	
//	/**
//	 * 测试登录页面跳转
//	 * @return
//	 */
//	@RequestMapping()
//	public ModelAndView test(){
//		return new ModelAndView("/login");
//	}
	
	/**
	 * 测试注册页面跳转
	 * @return
	 */
	@RequestMapping()
	public ModelAndView testRegister(){
		return new ModelAndView("/register");
	}
	
	/**
	 * 进入主页时，检查用户有没有登录
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/index")
    public ModelAndView toIndex(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		String username = getUserName(request);
		modelAndView.setViewName("/index");
		modelAndView.addObject("username", username);
        return modelAndView;
    }
	
	/**
	 * 返回当前登录用户名
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getUserName")
	protected String getUserName(HttpServletRequest request){
		HttpSession session = request.getSession();
		System.out.println("进入getUserName方法----------------------------");
		return (String) session.getAttribute("username");
	}
	
	/**
	 * 返回当前登录用户ID
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getUserId")
	protected Integer getUserId(HttpServletRequest request){
		HttpSession session = request.getSession();
		return (Integer) session.getAttribute("userId");
	}
	
}
