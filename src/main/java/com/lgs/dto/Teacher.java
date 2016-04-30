package com.lgs.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Teacher {
    private Integer teacherId;

    private String teacherName;

    private String teacherPassword;

    private String teacherEmail;

    private String teacherGender;

    private String teacherType;

    private String teacherQuestion;

    private String teacherAnswer;

    private Integer teacherIdentity;

    private Date teacherBirthday;

    private String teacherPolitical;

    private String teacherEducation;

    private String teacherSchool;

    private String teacherMajor;

    private String teacherNowIdentity;

    private String teacherPhone;

    private String teacherAddress;

    private String teacherShow;

    private String teacherExperience;

    private String teacherSubject;

    private String teacherExpYear;

    private String teacherTeachWay;

    private Integer teacherSalary;

    private Date teacherRegeditDate;

    private String isAuthentication;

    private Date authenticationDate;

    private String url;

    private String teachPlace;

    private Integer successNumber;
    
    /*将前端传过来的String类型日期转为Date类型*/
    SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

    public String getTeacherPassword() {
        return teacherPassword;
    }

    public void setTeacherPassword(String teacherPassword) {
        this.teacherPassword = teacherPassword == null ? null : teacherPassword.trim();
    }

    public String getTeacherEmail() {
        return teacherEmail;
    }

    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail == null ? null : teacherEmail.trim();
    }

    public String getTeacherGender() {
        return teacherGender;
    }

    public void setTeacherGender(String teacherGender) {
        this.teacherGender = teacherGender == null ? null : teacherGender.trim();
    }

    public String getTeacherType() {
        return teacherType;
    }

    public void setTeacherType(String teacherType) {
        this.teacherType = teacherType == null ? null : teacherType.trim();
    }

    public String getTeacherQuestion() {
        return teacherQuestion;
    }

    public void setTeacherQuestion(String teacherQuestion) {
        this.teacherQuestion = teacherQuestion == null ? null : teacherQuestion.trim();
    }

    public String getTeacherAnswer() {
        return teacherAnswer;
    }

    public void setTeacherAnswer(String teacherAnswer) {
        this.teacherAnswer = teacherAnswer == null ? null : teacherAnswer.trim();
    }

    public Integer getTeacherIdentity() {
        return teacherIdentity;
    }

    public void setTeacherIdentity(Integer teacherIdentity) {
        this.teacherIdentity = teacherIdentity;
    }

//    public Date getTeacherBirthday() {
//        return teacherBirthday;
//    }

//    public void setTeacherBirthday(Date teacherBirthday) {
//        this.teacherBirthday = teacherBirthday;
//    }
    /*将日期类型转化为String类型，方便前端页面显示*/
    public String getTeacherBirthday() {
        if(teacherBirthday != null){
    		return sdf.format(teacherBirthday);
    	}
    	else{
    		return null;
    	}
    }
    /*将前端页面传来的String类型日期转为Date类型*/
    public void setTeacherBirthday(String teacherBirthday) throws ParseException {
        this.teacherBirthday = sdf.parse(teacherBirthday);
    }

    public String getTeacherPolitical() {
        return teacherPolitical;
    }

    public void setTeacherPolitical(String teacherPolitical) {
        this.teacherPolitical = teacherPolitical == null ? null : teacherPolitical.trim();
    }

    public String getTeacherEducation() {
        return teacherEducation;
    }

    public void setTeacherEducation(String teacherEducation) {
        this.teacherEducation = teacherEducation == null ? null : teacherEducation.trim();
    }

    public String getTeacherSchool() {
        return teacherSchool;
    }

    public void setTeacherSchool(String teacherSchool) {
        this.teacherSchool = teacherSchool == null ? null : teacherSchool.trim();
    }

    public String getTeacherMajor() {
        return teacherMajor;
    }

    public void setTeacherMajor(String teacherMajor) {
        this.teacherMajor = teacherMajor == null ? null : teacherMajor.trim();
    }

    public String getTeacherNowIdentity() {
        return teacherNowIdentity;
    }

    public void setTeacherNowIdentity(String teacherNowIdentity) {
        this.teacherNowIdentity = teacherNowIdentity == null ? null : teacherNowIdentity.trim();
    }

    public String getTeacherPhone() {
        return teacherPhone;
    }

    public void setTeacherPhone(String teacherPhone) {
        this.teacherPhone = teacherPhone == null ? null : teacherPhone.trim();
    }

    public String getTeacherAddress() {
        return teacherAddress;
    }

    public void setTeacherAddress(String teacherAddress) {
        this.teacherAddress = teacherAddress == null ? null : teacherAddress.trim();
    }

    public String getTeacherShow() {
        return teacherShow;
    }

    public void setTeacherShow(String teacherShow) {
        this.teacherShow = teacherShow == null ? null : teacherShow.trim();
    }

    public String getTeacherExperience() {
        return teacherExperience;
    }

    public void setTeacherExperience(String teacherExperience) {
        this.teacherExperience = teacherExperience == null ? null : teacherExperience.trim();
    }

    public String getTeacherSubject() {
        return teacherSubject;
    }

    public void setTeacherSubject(String teacherSubject) {
        this.teacherSubject = teacherSubject == null ? null : teacherSubject.trim();
    }

    public String getTeacherExpYear() {
        return teacherExpYear;
    }

    public void setTeacherExpYear(String teacherExpYear) {
        this.teacherExpYear = teacherExpYear == null ? null : teacherExpYear.trim();
    }

    public String getTeacherTeachWay() {
        return teacherTeachWay;
    }

    public void setTeacherTeachWay(String teacherTeachWay) {
        this.teacherTeachWay = teacherTeachWay == null ? null : teacherTeachWay.trim();
    }

    public Integer getTeacherSalary() {
        return teacherSalary;
    }

    public void setTeacherSalary(Integer teacherSalary) {
        this.teacherSalary = teacherSalary;
    }

    public Date getTeacherRegeditDate() {
        return teacherRegeditDate;
    }

    public void setTeacherRegeditDate(Date teacherRegeditDate) {
        this.teacherRegeditDate = teacherRegeditDate;
    }

    public String getIsAuthentication() {
        return isAuthentication;
    }

    public void setIsAuthentication(String isAuthentication) {
        this.isAuthentication = isAuthentication == null ? null : isAuthentication.trim();
    }

//    public Date getAuthenticationDate() {
//        return authenticationDate;
//    }

//    public void setAuthenticationDate(Date authenticationDate) {
//        this.authenticationDate = authenticationDate;
//    }
    
    public String getAuthenticationDate() {
    	if(authenticationDate != null){
    		return sdf.format(authenticationDate);
    	}
    	else{
    		return null;
    	}
    }
    
    public void setAuthenticationDate(String authenticationDate) throws ParseException {
        this.authenticationDate = sdf.parse(authenticationDate);
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getTeachPlace() {
        return teachPlace;
    }

    public void setTeachPlace(String teachPlace) {
        this.teachPlace = teachPlace == null ? null : teachPlace.trim();
    }

    public Integer getSuccessNumber() {
        return successNumber;
    }

    public void setSuccessNumber(Integer successNumber) {
        this.successNumber = successNumber;
    }
}