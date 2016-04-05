package com.lgs.service;

import com.lgs.dto.Student;

/**
 * 学员管理接口
 * 
 * @author LGS on 03/17/2016
 */
public interface StudentService {

	/*新增学员*/
	Student insert(Student student);
	
	/*删除学员*/
	boolean delete(Student student);
	
	/*修改学员信息*/
	int update(Student student);
	
	/*根据名字查询*/
	Student queryByName(Student student);
	
	/*根据手机号查询*/
	Student queryByPhone(Student student);
	
	/*根据ID查询*/
	Student queryById(Student student);
	
	/*各种条件查询*/
}
