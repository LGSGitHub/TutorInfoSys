package com.lgs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgs.dto.StudentOrder;
import com.lgs.mapper.StudentOrderMapper;
import com.lgs.service.StudentOrderService;

@Service
public class StudentOrderImpl implements StudentOrderService {

	@Autowired
	private StudentOrderMapper studentOrderMapper;
	
	@Override
	public boolean insert(StudentOrder studentOrder) {
		System.out.println("------执行插入学员订单方法------");
		int insertCount = studentOrderMapper.insert(studentOrder);
		System.out.println("新增订单成功数："+insertCount);
		if(insertCount > 0){
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(StudentOrder studentOrder) {
		System.out.println("------执行删除学员订单方法------");
		int deleteCount = studentOrderMapper.deleteByPrimaryKey(studentOrder.getOrderId());
		System.out.println("删除学员订单成功数："+deleteCount);
		if(deleteCount > 0){
			return true;
		}
		return false;
	}

	@Override
	public List<StudentOrder> queryAllOrders() {
		System.out.println("------执行查询所有学员订单方法------");
		List<StudentOrder> orderList = studentOrderMapper.selectAllOrders();
		return orderList;
	}

	@Override
	public List<StudentOrder> queryByStuId(StudentOrder studentOrder) {
		System.out.println("------执行根据学员ID查询学员订单方法------");
		List<StudentOrder> orderList = studentOrderMapper.selectByStuId(studentOrder);
		return orderList;
	}

	@Override
	public List<StudentOrder> queryByCondition(StudentOrder studentOrder) {
		System.out.println("------执行条件查询学员订单方法------");
		List<StudentOrder> orderList = studentOrderMapper.selectByCondition(studentOrder);
		return orderList;
	}

	@Override
	public StudentOrder queryByOrderId(StudentOrder studentOrder) {
		System.out.println("------执行根据订单ID查询学员订单方法------");
		return studentOrderMapper.selectByPrimaryKey(studentOrder.getOrderId());
	}

	@Override
	public StudentOrder queryLatestOrder(StudentOrder studentOrder) {
		System.out.println("------执行根据学员ID查询其最新插入的学员订单方法------");
		return studentOrderMapper.selectLatestOrder(studentOrder);
	}

	@Override
	public boolean updateStatusByOrderId(StudentOrder studentOrder) {
		System.out.println("------执行更新学员订单状态方法------");
		int updateCount = studentOrderMapper.updateStatusByOrderId(studentOrder);
		if(updateCount > 0){
			return true;
		}
		return false;
	}

}
