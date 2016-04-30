package com.lgs.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Reservation {
    private Integer reservationId;

    private Integer orderId;

    private Integer teacherId;

    private Integer studentId;

    private Date reservationDate;

    private String reservationInfo;

    private String reservationStatus;
    
    /*String类型日期与Date类型相互转化*/
    SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );

    public Integer getReservationId() {
        return reservationId;
    }

    public void setReservationId(Integer reservationId) {
        this.reservationId = reservationId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getReservationDate() {
    	/*把Date类型日期转为String类型输出到页面显示*/
        if(reservationDate != null){
    		return sdf.format(reservationDate);
    	}
    	else{
    		return null;
    	}
    }

    public void setReservationDate(Date reservationDate) {
        this.reservationDate = reservationDate;
    }

    public String getReservationInfo() {
        return reservationInfo;
    }

    public void setReservationInfo(String reservationInfo) {
        this.reservationInfo = reservationInfo == null ? null : reservationInfo.trim();
    }

    public String getReservationStatus() {
        return reservationStatus;
    }

    public void setReservationStatus(String reservationStatus) {
        this.reservationStatus = reservationStatus == null ? null : reservationStatus.trim();
    }
}