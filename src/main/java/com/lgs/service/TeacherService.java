package com.lgs.service;

import java.util.List;

import com.lgs.dto.Teacher;

/**
 * 教员管理接口类
 * @author LGS
 *
 */
public interface TeacherService {

	/*新增教员*/
	boolean insert(Teacher teacher);
	
	/*删除教员*/
	boolean delete(Teacher teacher);
	
	/*更新教员*/
	boolean update(Teacher teacher);
	
	/*根据名字查询教员*/
	Teacher queryByName(Teacher teacher);
	
	/*根据手机号查询教员*/
	Teacher queryByPhone(Teacher teacher);
	
	/*根据手机号查询教员*/
	Teacher queryById(Teacher teacher);
	
	/*根据各种条件查询教员*/
	List<Teacher> queryByCondition(Teacher teacher);
	
	/*查询所有教员*/
	List<Teacher> queryAllTeachers();
}
