package com.lgs.admin.service;

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
import com.lgs.dto.Admin;
import com.lgs.service.AdminService;

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
	
	
	/*@Test
	public void testQueryByName(){
		Admin adminResult = adminService.queryByAdminName(admin);
		System.out.println(JSON.toJSON(adminResult));
	}
	
	@Test
	public void testInsert(){
		adminService.insert(admin);
	}*/
	@Test
	public void testInsert(){
		Admin admin = new Admin();
		admin.setAdminName("LGS1");
		admin.setAdminPassword("LGS1");
		System.out.println("hello");
//		adminService.insert(admin);
		Admin adminResult = adminService.queryByAdminName(admin);
		LOGGER.info(JSON.toJSON(adminResult));
		System.out.println(JSON.toJSON(adminResult));
//		admin.setAdminPassword("LGS");
//		adminService.insert(admin);
	}
}
