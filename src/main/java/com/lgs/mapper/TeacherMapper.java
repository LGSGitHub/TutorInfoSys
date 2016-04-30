package com.lgs.mapper;

import java.util.List;

import com.lgs.dto.Teacher;

public interface TeacherMapper {
    int deleteByPrimaryKey(Integer teacherId);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer teacherId);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
    
    /*自行添加的写在下面*/
    Teacher selectByName(Teacher teacher);
    
    Teacher selectByPhone(Teacher teacher);
    
    List<Teacher> selectAllTeachers();
    
    List<Teacher> selectByCondition(Teacher teacher);
}