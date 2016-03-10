package com.lgs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lgs.dto.Admin;
import com.lgs.mapper.AdminMapper;
import com.lgs.service.AdminService;

/**
 * 管理员接口实现类
 * @author LGS
 *
 */

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admin queryByAdminName(Admin admin) {
		// TODO Auto-generated method stub
		System.out.println("------执行根据名字查询管理员方法------");
		return adminMapper.selectByName(admin);
	}

	@Override
	public List<Admin> queryAllAdmin() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Admin insert(Admin admin) {
		// TODO Auto-generated method stub
		System.out.println("------执行新增管理员方法------");
		if(admin.getAdminName() != null){
			adminMapper.insert(admin);
		}
		return null;
	}
	
}
