package com.lgs.dto;

public class Student {
    private Integer studentId;

	private String studentName;

	private String studentPassword;

	private String studentEmail;

	private String studentQuestion;

	private String studentAnswer;

	private String studentPhone;

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName == null ? null : studentName.trim();
	}

	public String getStudentPassword() {
		return studentPassword;
	}

	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword == null ? null : studentPassword.trim();
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail == null ? null : studentEmail.trim();
	}

	public String getStudentQuestion() {
		return studentQuestion;
	}

	public void setStudentQuestion(String studentQuestion) {
		this.studentQuestion = studentQuestion == null ? null : studentQuestion.trim();
	}

	public String getStudentAnswer() {
		return studentAnswer;
	}

	public void setStudentAnswer(String studentAnswer) {
		this.studentAnswer = studentAnswer == null ? null : studentAnswer.trim();
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone == null ? null : studentPhone.trim();
	}

}