package com.lgs.admin.service;

import java.text.ParseException;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.lgs.controller.TeacherController;
import com.lgs.dto.Admin;
import com.lgs.dto.Message;
import com.lgs.dto.Reservation;
import com.lgs.dto.Student;
import com.lgs.dto.StudentOrder;
import com.lgs.dto.Teacher;
import com.lgs.service.AdminService;
import com.lgs.service.MessageService;
import com.lgs.service.ReservationService;
import com.lgs.service.StudentOrderService;
import com.lgs.service.TeacherService;

/**
 * 管理员接口测试类
 * @author LGS
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml",
		"classpath:spring-mybatis.xml" })
//@ContextConfiguration(locations = { "classpath:spring/spring.xml,classpath:spring/spring-mybatis.xml"})
public class TestAdminService {
	
	private static final Logger LOGGER = Logger
			.getLogger(TestAdminService.class);

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private StudentOrderService studentOrderService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private ReservationService reservationService;
	
	/*@Test
	public void testQueryByName(){
		Admin adminResult = adminService.queryByAdminName(admin);
		System.out.println(JSON.toJSON(adminResult));
	}
	
	@Test
	public void testInsert(){
		adminService.insert(admin);
	}*/
//	@Test
//	public void testInsert(){
//		Admin admin = new Admin();
//		admin.setAdminName("LGS1");
//		admin.setAdminPassword("LGS1");
//		System.out.println("hello");
////		adminService.insert(admin);
//		Admin adminResult = adminService.queryByAdminName(admin);
//		LOGGER.info(JSON.toJSON(adminResult));
//		System.out.println(JSON.toJSON(adminResult));
////		admin.setAdminPassword("LGS");
////		adminService.insert(admin);
//	}
//	@Test
//	public void testTeacherBirthday() throws ParseException{
//		Teacher teacher = new Teacher();
//		teacher.setTeacherBirthday("2014-04-04");
//	}
	@Test
	public void testSelectAllTeachers(){
//		Teacher teacher = new Teacher();
//		teacher.setTeacherSubject("全科");
//		List<Teacher> teaList = teacherService.queryByCondition(teacher);
//		System.out.println("list长度"+teaList.size());
//		StudentOrder studentOrder = new StudentOrder();
//		studentOrder.setStudentId(1004);
//		StudentOrder dbStudentOrder = studentOrderService.queryLatestOrder(studentOrder);
//		System.out.println(dbStudentOrder.getOrderId());
//		Message message = new Message();
//		message.setMessageContent("hello world");
//		message.setReceiverId(3);
//		message.setSenterId(1001);
//		message.setOrderId(22);
//		List<Message> list = messageService.queryMyNewMessage(1003);
//		messageService.insert(message);
		Reservation reservation = new Reservation();
		reservation.setOrderId(24);
		List<Reservation> list = reservationService.queryAllMyReservation(reservation);
		System.out.println(list.size());
	}
}
