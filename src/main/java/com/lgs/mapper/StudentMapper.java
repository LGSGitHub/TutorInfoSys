package com.lgs.mapper;

import com.lgs.dto.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer studentId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer studentId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
    
    /*一下是自行添加*/
    Student selectByName(Student student);
    
    Student selectByPhone(Student student);
}