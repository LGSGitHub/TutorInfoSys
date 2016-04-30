package com.lgs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lgs.dto.Student;
import com.lgs.dto.Teacher;
import com.lgs.mapper.StudentMapper;
import com.lgs.mapper.TeacherMapper;
import com.lgs.service.TeacherService;

/**
 * 教员接口实现类
 * @author LGS
 *
 */
@Transactional
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherMapper teacherMapper;

	@Override
	public boolean insert(Teacher teacher) {
		System.out.println("------执行插入教员方法------");
		teacherMapper.insert(teacher);
		return true;
	}

	@Override
	public boolean delete(Teacher teacher) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Teacher teacher) {
		System.out.println("------执行更新教员信息方法------");
		int count = teacherMapper.updateByPrimaryKey(teacher);
		System.out.println("更新操作返回值是："+count);
		return true;
	}

	@Override
	public Teacher queryByName(Teacher teacher) {
		// TODO Auto-generated method stub
		System.out.println("------执行根据名字查询教员方法------");
		return teacherMapper.selectByName(teacher);
	}

	@Override
	public Teacher queryByPhone(Teacher teacher) {
		// TODO Auto-generated method stub
		System.out.println("------执行根据手机号查询教员方法------");
		return teacherMapper.selectByPhone(teacher);
	}

	@Override
	public Teacher queryById(Teacher teacher) {
		System.out.println("------执行根据ID查询教员方法------");
		return teacherMapper.selectByPrimaryKey(teacher.getTeacherId());
	}

	@Override
	public List<Teacher> queryAllTeachers() {
		System.out.println("------执行查询所有教员方法------");
		List<Teacher> allTeaList = teacherMapper.selectAllTeachers();
		return allTeaList;
	}

	@Override
	public List<Teacher> queryByCondition(Teacher teacher) {
		System.out.println("------执行条件查询教员方法------");
		List<Teacher> teaList = teacherMapper.selectByCondition(teacher);
		return teaList;
	}

}
