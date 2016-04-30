package com.lgs.service;

import java.util.List;

import com.lgs.dto.Reservation;

public interface ReservationService {

	/*查询我的订单*/
	List<Reservation> queryAllMyReservation(Reservation reservation);
	
	/*插入处理订单*/
	boolean insert(Reservation reservation);
	
	/*根据主键ID查询*/
	Reservation queryByReservationId(Reservation reservation);
}
