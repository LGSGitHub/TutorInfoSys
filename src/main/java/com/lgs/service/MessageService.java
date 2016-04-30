package com.lgs.service;

import java.util.List;

import com.lgs.dto.Message;

/**
 * 留言管理接口
 * @author LGS
 *
 */
public interface MessageService {

	/*查询当前用户的所有留言，无论是发送者还是接受者*/
	List<Message> queryAllMyMessage(int userId);
	
	/*查询当前用户的新留言，接受者*/
	List<Message> queryMyNewMessage(int userId);
	
	/*更新留言状态为已读*/
	boolean updateStatus(Message message);
	
	/*插入（发送）留言*/
	boolean insert(Message message);
}
