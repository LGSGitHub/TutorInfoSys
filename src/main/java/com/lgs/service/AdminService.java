package com.lgs.service;

import java.util.List;

import com.lgs.dto.Admin;

/**
 * 管理员类别接口
 * 
 * @author LGS
 *
 */

public interface AdminService {

	/*根据名字查询单个管理员数据*/
	Admin queryByAdminName(Admin admin);
	
	/*查询所有管理员*/
	List<Admin> queryAllAdmin();
	
	/*增加管理员*/
	Admin insert(Admin admin);
	
	/*删除管理员*/
	
	/*修改管理员*/
}
