package com.lgs.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StudentOrder {
    private Integer orderId;

    private Integer studentId;

    private String sName;

    private String sSex;

    private Integer sAge;

    private String sPhone;

    private String sAddress;

    private String sDetailAddress;

    private String sGrade;

    private String sSubject;

    private String sCondition;

    private String sConditionRemarks;

    private String sTime;

    private String sRequestSex;

    private String sRequestQualification;

    private String sQualificationRemarks;

    private String sTeacherWay;

    private String sPrice;

    private String orderStatus;

    private Integer teacherId;

    private Date startDate;

    private Date endDate;
    
    /*String类型日期与Date类型相互转化*/
    SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName == null ? null : sName.trim();
    }

    public String getsSex() {
        return sSex;
    }

    public void setsSex(String sSex) {
        this.sSex = sSex == null ? null : sSex.trim();
    }

    public Integer getsAge() {
        return sAge;
    }

    public void setsAge(Integer sAge) {
        this.sAge = sAge;
    }

    public String getsPhone() {
        return sPhone;
    }

    public void setsPhone(String sPhone) {
        this.sPhone = sPhone == null ? null : sPhone.trim();
    }

    public String getsAddress() {
        return sAddress;
    }

    public void setsAddress(String sAddress) {
        this.sAddress = sAddress == null ? null : sAddress.trim();
    }

    public String getsDetailAddress() {
        return sDetailAddress;
    }

    public void setsDetailAddress(String sDetailAddress) {
        this.sDetailAddress = sDetailAddress == null ? null : sDetailAddress.trim();
    }

    public String getsGrade() {
        return sGrade;
    }

    public void setsGrade(String sGrade) {
        this.sGrade = sGrade == null ? null : sGrade.trim();
    }

    public String getsSubject() {
        return sSubject;
    }

    public void setsSubject(String sSubject) {
        this.sSubject = sSubject == null ? null : sSubject.trim();
    }

    public String getsCondition() {
        return sCondition;
    }

    public void setsCondition(String sCondition) {
        this.sCondition = sCondition == null ? null : sCondition.trim();
    }

    public String getsConditionRemarks() {
        return sConditionRemarks;
    }

    public void setsConditionRemarks(String sConditionRemarks) {
        this.sConditionRemarks = sConditionRemarks == null ? null : sConditionRemarks.trim();
    }

    public String getsTime() {
        return sTime;
    }

    public void setsTime(String sTime) {
        this.sTime = sTime == null ? null : sTime.trim();
    }

    public String getsRequestSex() {
        return sRequestSex;
    }

    public void setsRequestSex(String sRequestSex) {
        this.sRequestSex = sRequestSex == null ? null : sRequestSex.trim();
    }

    public String getsRequestQualification() {
        return sRequestQualification;
    }

    public void setsRequestQualification(String sRequestQualification) {
        this.sRequestQualification = sRequestQualification == null ? null : sRequestQualification.trim();
    }

    public String getsQualificationRemarks() {
        return sQualificationRemarks;
    }

    public void setsQualificationRemarks(String sQualificationRemarks) {
        this.sQualificationRemarks = sQualificationRemarks == null ? null : sQualificationRemarks.trim();
    }

    public String getsTeacherWay() {
        return sTeacherWay;
    }

    public void setsTeacherWay(String sTeacherWay) {
        this.sTeacherWay = sTeacherWay == null ? null : sTeacherWay.trim();
    }

    public String getsPrice() {
        return sPrice;
    }

    public void setsPrice(String sPrice) {
        this.sPrice = sPrice == null ? null : sPrice.trim();
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getStartDate() {
        /*把Date类型日期转为String类型输出到页面显示*/
        if(startDate != null){
    		return sdf.format(startDate);
    	}
    	else{
    		return null;
    	}
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        /*把Date类型日期转为String类型输出到页面显示*/
        if(endDate != null){
    		return sdf.format(endDate);
    	}
    	else{
    		return null;
    	}
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}