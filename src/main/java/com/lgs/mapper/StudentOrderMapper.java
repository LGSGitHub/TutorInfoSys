package com.lgs.mapper;

import java.util.List;

import com.lgs.dto.StudentOrder;

public interface StudentOrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(StudentOrder record);

    int insertSelective(StudentOrder record);

    StudentOrder selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(StudentOrder record);

    int updateByPrimaryKey(StudentOrder record);
    
    /*自行添加的写在下面*/
    
    /*根据学员ID查询订单*/
    List<StudentOrder> selectByStuId(StudentOrder studentOrder);
    
    /*查询所有订单*/
    List<StudentOrder> selectAllOrders();
    
    /*条件查询订单*/
    List<StudentOrder> selectByCondition(StudentOrder studentOrder);
    
    /*根据学员ID查询其最新插入的学员订单*/
    StudentOrder selectLatestOrder(StudentOrder studentOrder);
    
    /*根据orderId更新学员订单状态（由发布中改为已关闭）*/
    int updateStatusByOrderId(StudentOrder studentOrder);
}