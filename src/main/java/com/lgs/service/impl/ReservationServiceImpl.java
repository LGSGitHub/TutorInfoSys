package com.lgs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgs.dto.Reservation;
import com.lgs.mapper.ReservationMapper;
import com.lgs.service.ReservationService;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationMapper reservationMapper;
	
	@Override
	public List<Reservation> queryAllMyReservation(Reservation reservation) {
		System.out.println("------执行查询订单处理方法------");
		return reservationMapper.selectById(reservation);
	}

	@Override
	public boolean insert(Reservation reservation) {
		System.out.println("------执行插入处理订单方法------");
		int successCount = reservationMapper.insert(reservation);
		if(successCount > 0){
			return true;
		}
		return false;
	}

	@Override
	public Reservation queryByReservationId(Reservation reservation) {
		System.out.println("------执行根据主键ID查询订单处理方法------");
		return reservationMapper.selectByPrimaryKey(reservation.getReservationId());
	}

}
