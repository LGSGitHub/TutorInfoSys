package com.lgs.service;

import java.util.List;

import com.lgs.dto.StudentOrder;

/**
 * 学员订单管理接口
 * @author LGS
 *
 */
public interface StudentOrderService {

	/*新增学员订单*/
	boolean insert(StudentOrder studentOrder);
	
	/*删除学员订单*/
	boolean delete(StudentOrder studentOrder);
	
	/*查询所有学员订单*/
	List<StudentOrder> queryAllOrders();
	
	/*根据学员ID查询学员订单*/
	List<StudentOrder> queryByStuId(StudentOrder studentOrder);
	
	/*根据订单ID查询学员订单*/
	StudentOrder queryByOrderId(StudentOrder studentOrder);
	
	/*各种条件查询*/
	List<StudentOrder> queryByCondition(StudentOrder studentOrder);
	
	/*查询最新插入的一条学员订单*/
	StudentOrder queryLatestOrder(StudentOrder studentOrder);
	
	/*更新学员订单的状态*/
	boolean updateStatusByOrderId(StudentOrder studentOrder);
}
