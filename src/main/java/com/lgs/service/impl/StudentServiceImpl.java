package com.lgs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lgs.dto.Student;
import com.lgs.mapper.StudentMapper;
import com.lgs.service.StudentService;

/**
 * 学员接口实现类
 * @author LGS
 *
 */

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public Student insert(Student student) {
		System.out.println("------执行插入学员方法------");
		studentMapper.insert(student);
		return null;
	}

	@Override
	public boolean delete(Student student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int update(Student student) {
		System.out.println("------执行修改学员信息方法------");
		return studentMapper.updateByPrimaryKey(student);
	}

	@Override
	public Student queryByName(Student student) {
		System.out.println("------执行根据名字查询学员方法------");
		return studentMapper.selectByName(student);
	}

	@Override
	public Student queryByPhone(Student student) {
		System.out.println("------执行根据手机号查询学员方法------");
		return studentMapper.selectByPhone(student);
	}

	@Override
	public Student queryById(Student student) {
		System.out.println("------执行根据ID查询学员方法------");
		return studentMapper.selectByPrimaryKey(student.getStudentId());
	}

}
