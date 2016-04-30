package com.lgs.mapper;

import java.util.List;

import com.lgs.dto.Reservation;

public interface ReservationMapper {
    int deleteByPrimaryKey(Integer reservationId);

    int insert(Reservation record);

    int insertSelective(Reservation record);

    Reservation selectByPrimaryKey(Integer reservationId);

    int updateByPrimaryKeySelective(Reservation record);

    int updateByPrimaryKey(Reservation record);
    
    /*一下为自行添加*/
    
    /*根据教员ID查询*/
    Reservation selectByTeacherId(Integer teacherId);
    
    /*根据学员ID查询*/
    Reservation selectByStudentId(Integer studentId);
    
    /*根据当前用户ID查询*/
    List<Reservation> selectById(Reservation reservation);
}