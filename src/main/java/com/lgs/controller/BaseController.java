package com.lgs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 控制器基类
 * @author LGS
 * 2016年3月10日
 *
 */

@Controller
public class BaseController {
	
	@RequestMapping(value = "/login")
	public ModelAndView test(){
		return new ModelAndView("/login");
	}
	
	/*@RequestMapping(value = "/hehe")
	public boolean testUserName(){
		return true;
	}*/
	
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
	protected Integer getUserId(HttpServletRequest request){
		HttpSession session = request.getSession();
		return (Integer) session.getAttribute("userId");
	}

}
