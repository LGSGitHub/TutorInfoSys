package com.lgs.mapper;

import java.util.List;

import com.lgs.dto.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer messageId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer messageId);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
    
    /*以为为自行添加*/
    
    List<Message> selectAllMyMessage(Integer userId);
    
    List<Message> selsectMyNewMessage(Integer userId);
    
    int updateStatus(Message message);
}