package com.lgs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lgs.dto.Message;
import com.lgs.service.MessageService;

/**
 * 留言控制类
 * @author LGS
 *
 */

@Controller
public class MessageController extends BaseController{
	
	@Autowired
	private MessageService messageService;

	/**
	 * 查询当前用户所有留言
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/queryAllMyMessage")
	public void queryAllMyMessage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		int userId = getUserId(request);
		List<Message> messageList = messageService.queryAllMyMessage(userId);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("messageList", messageList);
		jsonObject.put("listSize", messageList.size());
		
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	/**
	 * 查询当前用户的未读留言信息
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/queryMyNewMessage")
	public void queryMyNewMessage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		JSONObject jsonObject = new JSONObject();
		if(getRole(request) != null){
			int userId = getUserId(request);
			List<Message> messageList = messageService.queryMyNewMessage(userId);
			jsonObject.put("messageList", messageList);
			jsonObject.put("listSize", messageList.size());
			
		}
		else{
			jsonObject.put("listSize", 0);
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
		/*更改未读留言的状态*/
//		updateStatus(request);
	}
	
	/**
	 * 跳转到留言消息页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/toMyMessage")
	public ModelAndView toMyMessage(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		String messageCount = request.getParameter("messageCount");
		modelAndView.addObject("messageCount", messageCount);
		modelAndView.addObject("userId", getUserId(request));
		modelAndView.setViewName("/myMessage");
		/*更改未读留言的状态*/
//		updateStatus(request);
		return modelAndView;
	}
	
	/**
	 * 发送留言
	 * @param message
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/sendMessage")
	public void sendMessage(@ModelAttribute Message message,HttpServletResponse response,HttpServletRequest request) throws IOException{
		JSONObject jsonObject = new JSONObject();
		message.setSenterId(getUserId(request));
		boolean isSuccess = messageService.insert(message);
		if(isSuccess){
			jsonObject.put("status", "SUCCESS");
			jsonObject.put("status", "ERROR");
		}
		PrintWriter printWriter = response.getWriter();
		printWriter.write(jsonObject.toJSONString());
		printWriter.flush();
	}
	
	
	/**
	 * 修改当前用户未读的留言的状态（“未读”——>“已读”）
	 * @param request
	 */
	@RequestMapping(value = "updateStatus")
	public void updateStatus(HttpServletRequest request){
		int userId = getUserId(request);
		Message message = new Message();
		message.setReceiverId(userId);
		messageService.updateStatus(message);
	}
}
