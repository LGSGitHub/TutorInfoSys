package com.lgs.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Message {
    private Integer messageId;

    private Integer receiverId;

    private Integer senterId;

    private String messageContent;

    private String status;

    private Date sendtime;

    private Integer orderId;
    
    /*String类型日期与Date类型相互转化*/
    SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(Integer receiverId) {
        this.receiverId = receiverId;
    }

    public Integer getSenterId() {
        return senterId;
    }

    public void setSenterId(Integer senterId) {
        this.senterId = senterId;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent == null ? null : messageContent.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getSendtime() {
        /*把Date类型日期转为String类型输出到页面显示*/
        if(sendtime != null){
    		return sdf.format(sendtime);
    	}
    	else{
    		return null;
    	}
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }
}