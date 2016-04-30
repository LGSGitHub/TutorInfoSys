package com.lgs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgs.dto.Message;
import com.lgs.mapper.MessageMapper;
import com.lgs.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageMapper messageMapper;
	
	@Override
	public List<Message> queryAllMyMessage(int userId) {
		System.out.println("------执行查询当前用户所有留言方法------");
		return messageMapper.selectAllMyMessage(userId);
	}

	@Override
	public List<Message> queryMyNewMessage(int userId) {
		System.out.println("------执行查询当前用户未读留言方法------");
		return messageMapper.selsectMyNewMessage(userId);
	}

	@Override
	public boolean updateStatus(Message message) {
		System.out.println("------执行更新留言状态方法------");
		int successCount = messageMapper.updateStatus(message);
		if(successCount > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(Message message) {
		System.out.println("------执行插入留言方法------");
		int successCount = messageMapper.insert(message);
		if(successCount > 0){
			return true;
		}
		return false;
	}

}
