package com.lgs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;


/**
 * 控制器基类
 * @author LGS
 * 2016年3月10日
 *
 */

@Controller
public class BaseController {
	
	
	
	/**
	 * 返回当前登录用户名
	 * @param request
	 * @return
	 */
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
	protected Integer getUserId(HttpServletRequest request){
		HttpSession session = request.getSession();
		return (Integer) session.getAttribute("userId");
	}
	
	/**
	 * 返回当前登录用户的角色student,teacher or admin
	 * @param request
	 * @return
	 */
	protected String getRole(HttpServletRequest request){
		HttpSession session = request.getSession();
		return (String) session.getAttribute("role");
	}
	
}
